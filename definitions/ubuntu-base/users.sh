# Setup sudo to allow no-password sudo for group "admin"
groupadd -r admin
usermod -a -G admin ops
cp /etc/sudoers /etc/sudoers.orig
sed -i -e '/Defaults\s\+env_reset/a Defaults\texempt_group=admin' /etc/sudoers
sed -i -e 's/%admin ALL=(ALL) ALL/%admin ALL=NOPASSWD:ALL/g' /etc/sudoers

# Installing derecom default key
mkdir /home/ops/.ssh
chmod 700 /home/ops/.ssh
cd /home/ops/.ssh
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDMxMPne9PviTcZGv4cqglPhS98mNELf+dutJrbNSwZX46aUt/HbSx/nOX0i/9c0F5cNHek+y/tTa1myhnDfpIiYcuWtp+G79syQQn/5DUT0/qD6WX49YGKHGEDXaL6a7UvXxsfwcsEw8czMESXeErTg0+FLIKjYeHIcHWIJYuQ69wFKCcaBW4wCmT2fW5DAzldpYTjrK3miC4lLfnIf3nspJe/h1jcQHXOxbu4/OdYhfAL2zXroaw09CQGkV6Zyv7Bz1412ZRp1IHCZypJbv0gHtMyJMRGbZLWqm9vxxBhff9woMqIYiDTURXGdhLU0Om4h5MCQiN5+3P8zOnGJWvP ops@derecom.it" >> authorized_keys
chmod 600 /home/ops/.ssh/authorized_keys
chown -R ops /home/ops/.ssh
