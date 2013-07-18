# Install EPEL and RPMForge additional repos

basearch=`uname -p`
yum install -y http://ftp.upjs.sk/pub/mirrors/epel/6/${basearch}/epel-release-6-8.noarch.rpm
yum install -y
http://pkgs.repoforge.org/rpmforge-release/rpmforge-release-0.5.3-1.el6.rf.${basearch}.rpm
