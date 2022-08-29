#!/bin/sh
# Script to create a Metamath mirror on an empty Linode VM
# Revision history:
# 20-Jun-2021 (nm) - created
#
# 1. Login as root on a freshly created ("empty") Linode,
#    download this script, and run as follows under root:
#        ./build-linode.sh <ip> <ip6> <domain>
#            where
#               <ip> = IP address e.g. "173.255.232.114"
#               <ip6> = IPV6 address e.g. "2600:3c03::f03c:92ff:fe21:a2a7"
#               <domain> = domain name e.g. "ssl.metamath.org"
#        Note:  this gets the site working in http mode; it downloads the
#            entire Metamath site with rsync, taking ~1hr to complete
# 2. Update DNS A record for "us.metamath.org" to point to <ip>; wait
#    until "host us.metamath.org" returns this <ip>
# 3. Run
#        ./build-linode-cert.sh <ip> <ip6> <domain>
#

# Example creating an empty Linode VM:
#   https://login.linode.com/
#     Log in:  nmegill <passwd>
#   https://cloud.linode.com/linodes
#     Click on Create a Linode
#     Select Images "Debian 10", Region "Newark, NJ", Linode Plan "Nanode 1GB",
#         root password, optionally change Linode Label
#         to e.g. debian-us-metamath-org
#       Here is what the console showed:
#         Linode Label:  debian-us-metamath-org
#         Linode ID: 27874250
#         Created: 2021-06-20 19:00
#         2600:3c03::f03c:92ff:fe21:a2a7/128
#         root password:  <root-passwd>
#         SSH Access:   ssh root@173.255.232.114
#         LISH Console via SSH:  ssh -t nmegill@lish-newark.linode.com debian-us-east-001
#
# ssh root@173.255.232.114
# Run build-linode.sh on freshly-created VM
# Do not run build-linode.sh twice!  If it fails, delete the VM and start over.

# Instructions for updating DNS at domainmonger.com:
#
# domainmonger.com
#     Login
#         nm@alum.mit.edu
#         <passwd>
#         Login
#     Domains  (3rd from left in blue bar, not the black bar above it)
#       -> My Domains
#         (metamath.org) -> (wrench symbol) -> Manage domain
#            Manage
#              DNS Management
#                Manage A Records
#                  ADD A NEW A RECORD
#                     -or-
#                  EDIT (in row for existing record)
#                     -or-
#                  DELETE (in row for existing record)
#                Domainmonger has these notes:
#                    To specify any Host Name, use the asterisk "*"
#                    To specify no Host Name, use the at char "@"
#

# Useful links (suggested by Cris, although I haven't tried the procedures)
# https://www.linode.com/docs/guides/remote-access#transferring-ip-addresses
# https://certbot.eff.org/docs/using.html#manual
# https://community.letsencrypt.org/t/move-to-another-server/77985
# http://nateserk.com/2019/tech/migrate-letsencrypt-ssl-certificates-to-a-different-server-guide/

# Customize for this machine
# this_ip=172.104.21.165
this_ip=$1
# this_ip6=2600:3c03::f03c:92ff:fe83:1d9f
this_ip6=$2
# this_domain=linode2.metamath.org
this_domain=$3
email=nm@alum.mit.edu

# Setting hostname to something other than ${this-domain} causes sudo to fail
this_hostname=${this_domain}
hostnamectl set-hostname ${this_hostname}
grep -q "${this_domain}" /etc/hosts
if [ $?  -eq 1 ] ; then
  echo "Updating /etc/hosts..."
  cp -p /etc/hosts /etc/hosts-old
  echo "${this_ip}   ${this_domain}" >> /etc/hosts
  echo "${this_ip6}   ${this_domain}" >> /etc/hosts
else
  # If /etc/hosts already has ${this_hostname} then don't add it again
  echo "/etc/hosts was not changed"
fi

# https://www.linode.com/docs/guides/getting-started/#update-your-system-s-hosts-file
# For Ubuntu:  "You may be prompted to make a menu selection when the
# Grub package is updated on Ubuntu.  If prompted, select keep the local
# version currently installed."  -y should be OK for Debian.  See
# To use apt instead?: "sudo DEBIAN_FRONTEND=noninteractive apt upgrade"
apt-get update -y && apt-get upgrade -y

apt-get install nginx -y

# Install rsync to update site
apt-get install -y rsync

# Create a script to update this Metamath site
cat > /root/mirrorsync.sh << EOF
#!/bin/sh
rsync -vrltS -z --delete --delete-after --block-size=400 \\
    rsync://rsync.metamath.org/metamath /var/www/html
EOF
chmod +x /root/mirrorsync.sh

# Other utilities to assist future maintenance
apt-get -y install gcc
apt-get -y install locate
apt-get -y install zip
apt-get -y install rlwrap
apt-get -y install webalizer

# Try to solve annoying ssh timeouts that give the message:
#     "client_loop: send disconnect: Connection reset by peer"
grep -q '^TCPKeepAlive' /etc/ssh/sshd_config
if [ $? -eq 1 ] ; then
  echo 'Adding keep-alive to /etc/ssh/sshd_config...'
  cp -p /etc/ssh/sshd_config /etc/ssh/sshd_config-old
  echo 'TCPKeepAlive yes' >> /etc/ssh/sshd_config
  echo 'ClientAliveInterval 60' >> /etc/ssh/sshd_config
  echo 'ClientAliveCountMax 3' >> /etc/ssh/sshd_config
  systemctl restart ssh.service
  # or:  /etc/init.d/ssh restart
else
  # If sshd_config already has keep-alive then don't add it again
  echo '/etc/ssh/sshd_config was not changed'
fi


# Setting hostname to something other than ${this-domain} causes sudo to fail
this_hostname=${this_domain}
hostnamectl set-hostname ${this_hostname}
apt-get install certbot python-certbot-nginx -y
# (run certbot using script from build-linode-cert.sh, or
#  copy over files from another server
#
#     cd /etc
#     tar -czf ~/letsencrypt.tgz letsencrypt
#     cp /etc/nginx/sites-available/default ~/default
#
# then sftp them to this server, then run
#
#   cp -p /etc/nginx/sites-available/default /etc/nginx/sites-available/default-old
#   cp -p ~/default /etc/nginx/sites-available/
#   cd /etc
#   mv /etc/letsencrypt/ /etc/letsencrypt-old/
#   tar -xzf ~/letsencrypt.tgz
#   systemctl reload nginx
#



# Set up crontabs - note that "certbot renew"
#     requires that build-linode-cert.sh be run
crontab -u root -r
[ -f /root/tmpcron ] && rm /root/tmpcron
# Keep Metamath site updated daily
echo "7 4 * * * /root/mirrorsync.sh" >> /root/tmpcron
# Run certbot renewal once a month
echo "0 3 1 * * certbot renew" >> /root/tmpcron
# Update file database daily with "locate" package
echo "0 5 * * * updatedb" >> /root/tmpcron
crontab -u root /root/tmpcron
rm /root/tmpcron


# Do the initial site load (will take a while) - or just wait for cron
/root/mirrorsync.sh
