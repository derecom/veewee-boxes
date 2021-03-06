# Installing the virtualbox guest additions
yum -y install gcc make gcc-c++ kernel-devel-`uname -r` zlib-devel openssl-devel readline-devel sqlite-devel perl wget dkms nfs-utils

VBOX_VERSION=$(cat ~vagrant/.vbox_version)
cd /tmp
mount -o loop ~vagrant/VBoxGuestAdditions_$VBOX_VERSION.iso /mnt
sh /mnt/VBoxLinuxAdditions.run
umount /mnt
rm -rf ~vagrant/VBoxGuestAdditions_*.iso

