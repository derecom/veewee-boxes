# Installing the virtualbox guest additions
yum -y install gcc make gcc-c++ kernel-devel-`uname -r` zlib-devel openssl-devel readline-devel sqlite-devel perl wget dkms tar bzip2 net-tools

VBOX_VERSION=$(cat ~lnp/.vbox_version)
cd /tmp
mount -o loop ~lnp/VBoxGuestAdditions_$VBOX_VERSION.iso /mnt
sh /mnt/VBoxLinuxAdditions.run
umount /mnt
rm -rf ~lnp/VBoxGuestAdditions_*.iso
