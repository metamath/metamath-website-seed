#!/bin/sh
# Script to create an https certificate on a Linode VM
# Revision history:
# 22-Jun-2021 (nm) - created
#
# This must be run after build-linode.sh and after updating DNS record.
# See the instructions at the top of build-linode.sh before running.
#
# Make sure that 'host us.metamath.org' returns the IP address of this
# node before running this script.
#
# Run as follows under root:
#   ./build-linode-cert.sh <ip> <ip6> <domain>
#       where
#          <ip> = IP address e.g. "172.104.21.165"
#          <ip6> = IPV6 address e.g. "2600:3c03::f03c:92ff:fe83:1d9f"
#          <domain> = domain name e.g. "linode2.metamath.org"
#

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
apt-get install certbot python-certbot-nginx -y
certbot run -n --nginx --agree-tos --redirect -m ${email} \
  -d ${this_domain}
#  - Congratulations! Your certificate and chain have been saved at:
#    /etc/letsencrypt/live/linode2.metamath.org/fullchain.pem
#    Your key file has been saved at:
#    /etc/letsencrypt/live/linode2.metamath.org/privkey.pem
#    Your cert will expire on 2021-09-18. To obtain a new or tweaked
#    version of this certificate in the future, simply run certbot again
#    with the "certonly" option. To non-interactively renew *all* of
#    your certificates, run "certbot renew"
#  - Your account credentials have been saved in your Certbot
#    configuration directory at /etc/letsencrypt. You should make a
#    secure backup of this folder now. This configuration directory will
#    also contain certificates and private keys obtained by Certbot so
#    making regular backups of this folder is ideal.

# At this point, https://${this_domain} should work from any browser

# Set up crontabs
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

