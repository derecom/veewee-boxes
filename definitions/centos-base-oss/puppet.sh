# Install Puppet

basearch=`uname -p`
yum -y install http://yum.puppetlabs.com/el/6/products/${basearch}/puppetlabs-release-6-7.noarch.rpm
yum -y install puppet facter

