This is the REAME.TXT file that accompanies the Metamath site download,-e 
extracted from one of the downloaded files metamathsite.tar.bz2,-e 
metamathsite.tar.gz, or metamathsite.zip.-e 
-e 
This package contains the minimal sources and other files needed to-e 
rebuild the Metamath site from scratch.  It is not usable until you run-e 
the bash script "install.sh" (see below).  You will need around 650MB of-e 
free disk space.-e 
-e 
-e 
-e 
How to build the Metamath site-e 
-------------------------------e 
-e 
To use the script install.sh to build the Metamath site, you will need-e 
a Unix or Unix-like system (such as Cygwin for Windows) that includes-e 
a bash shell.-e 
-e 
-e 
-e 
A. The simple way to do it-e 
---------------------------e 
-e 
To build the Metamath web site from a bash shell, type-e 
-e 
  ./install.sh-e 
-e 
in the metamathsite (i.e. this) directory.  During the installation, a-e 
lot of status messages will flash by on the screen.  When done, the last-e 
line on the screen should read:-e 
-e 
  The installation completed successfully.  The home page is index.html.-e 
-e 
-e 
-e 
B. A more cautious way to do it-e 
---------------------------------e 
-e 
To build the Metamath web site from a bash shell, type-e 
-e 
   sh -x ./install.sh >install.log 2>&1-e 
-e 
You can monitor the progress in another bash shell window with "tail -f-e 
install.log".  The last line in install.log should read:-e 
-e 
  The installation completed successfully.  The home page is index.html.-e 
-e 
After the installation is completed, check the install.log file for-e 
problems:-e 
-e 
  egrep -i \-e 
    "warning|error|no such|cannot|permission|denied|invalid|too long|can't" \-e 
      install.log | egrep -v \-e 
    "No errors|Font Warn|label token|ignored|may have changed"-e 
-e 
If all went OK there should be no output.-e 
-e 
-e 
-e 
Notes-e 
------e 
-e 
1. The script install.sh is the actual script used to rebuild this site-e 
periodically.  In the hopefully unlikely event there is a problem,-e 
please report it to Norm Megill - this is important to help maintain the-e 
quality of the Metamath site!  There are also some additional notes in-e 
the comments at the beginning of the install.sh file.-e 
-e 
2. To conserve about 70MB of disk space on a personal local copy (not a-e 
mirror site!), after the installation you can remove the redundant-e 
download files:-e 
-e 
  rm downloads/m?[a-ik-z]*z* downloads/ql* downloads/s*-e 
-e 
-e 
=======================================================================-e 
-e 
Copyright-e 
----------e 
-e 
See the file copyright.html in this directory for copyright and-e 
licensing information that applies to the content of this package.  The-e 
file is also at http://us.metamath.org/copyright.html on the web.-e 
-e 
-e 
Norm Megill  nm(at)alum(dot)mit(dot)edu  10-Dec-2006-e 
