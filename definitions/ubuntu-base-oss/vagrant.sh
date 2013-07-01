if [ -f .veewee_params ]
then
  . .veewee_params
fi

date > /etc/vagrant_box_build_time

# Install NFS client
apt-get -y install nfs-common
