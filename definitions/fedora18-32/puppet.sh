# Install Puppet

# TODO Is there a way to parametrize x86_64 to $basearch ?
yum -y install http://yum.puppetlabs.com/fedora/f18/products/i386/puppetlabs-release-18-7.noarch.rpm
yum -y install puppet facter
