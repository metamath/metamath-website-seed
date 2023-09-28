This is the README.TXT file that accompanies the Metamath site download,
extracted from one of the downloaded files metamathsite.tar.bz2,
metamathsite.tar.gz, or metamathsite.zip.

This package contains the minimal sources and other files needed to
rebuild the Metamath site from scratch.  It is not usable until you run
the bash script "install.sh" (see below).  You will need around 650MB of
free disk space.



How to build the Metamath site
------------------------------

To use the script install.sh to build the Metamath site, you will need
a Unix or Unix-like system (such as Cygwin for Windows) that includes
a bash shell.



A. The simple way to do it
--------------------------

To build the Metamath web site from a bash shell, type

  ./install.sh

in the metamathsite (i.e. this) directory.  During the installation, a
lot of status messages will flash by on the screen.  When done, the last
line on the screen should read:

  The installation completed successfully.  The home page is index.html.



B. A more cautious way to do it
--------------------------------

To build the Metamath web site from a bash shell, type

   sh -x ./install.sh >install.log 2>&1

You can monitor the progress in another bash shell window with "tail -f
install.log".  The last line in install.log should read:

  The installation completed successfully.  The home page is index.html.

After the installation is completed, check the install.log file for
problems:

  egrep -i \
    "warning|error|no such|cannot|permission|denied|invalid|too long|can't" \
      install.log | egrep -v \
    "No errors|Font Warn|label token|ignored|may have changed"

If all went OK there should be no output.



Notes
-----

1. The script install.sh is the actual script used to rebuild this site
periodically.  In the hopefully unlikely event there is a problem,
please report it - this is important to help maintain the
quality of the Metamath site!  There are also some additional notes in
the comments at the beginning of the install.sh file.

2. To conserve about 70MB of disk space on a personal local copy (not a
mirror site!), after the installation you can remove the redundant
download files:

  rm downloads/m?[a-ik-z]*z* downloads/ql* downloads/s*


=======================================================================

Copyright
---------

See the file copyright.html in this directory for copyright and
licensing information that applies to the content of this package.  The
file is also at http://us.metamath.org/copyright.html on the web.


Norm Megill  10-Dec-2006
