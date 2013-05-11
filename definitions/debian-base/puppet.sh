# Install puppet and facter from official Puppetlabs APT repository
wget -O puppetlabs-release.deb http://apt.puppetlabs.com/puppetlabs-release-wheezy.deb
dpkg -i puppetlabs-release.deb
rm puppetlabs-release.deb
apt-get -y update
apt-get -y install puppet facter
