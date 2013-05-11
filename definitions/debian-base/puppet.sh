# Add puppet user and group
#adduser --system --group --home /var/lib/puppet puppet

wget -O puppetlabs-release.deb http://apt.puppetlabs.com/puppetlabs-release-unstable.deb
dpkg -i puppetlabs-release.deb
rm puppetlabs-release.deb
apt-get -y update
apt-get -y install puppetmaster puppet facter
