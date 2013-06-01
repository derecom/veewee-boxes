Veewee::Definition.declare({
  :cpu_count => '1',
  :memory_size=> '480',
  :disk_size => '81920',
  :disk_format => 'VDI',
  :hostiocache => 'off',
  :os_type_id => 'RedHat_64',
  :iso_file => "CentOS-6.4-x86_64-minimal.iso",
  :iso_src => "http://yum.singlehop.com/CentOS/6.4/isos/x86_64/CentOS-6.4-x86_64-minimal.iso",
  :iso_md5 => "4a5fa01c81cc300f4729136e28ebe600",
  :iso_download_timeout => 1000,
  :boot_wait => "10",
  :boot_cmd_sequence => [
    '<Tab> text ks=http://%IP%:%PORT%/ks.cfg<Enter>'
  ],
  :kickstart_port => "7122",
  :kickstart_timeout => 10000,
  :kickstart_file => "ks.cfg",
  :ssh_login_timeout => "10000",
  :ssh_user => "ops",
  :ssh_password => "operations",
  :ssh_key => "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDMxMPne9PviTcZGv4cqglPhS98mNELf+dutJrbNSwZX46aUt/HbSx/nOX0i/9c0F5cNHek+y/tTa1myhnDfpIiYcuWtp+G79syQQn/5DUT0/qD6WX49YGKHGEDXaL6a7UvXxsfwcsEw8czMESXeErTg0+FLIKjYeHIcHWIJYuQ69wFKCcaBW4wCmT2fW5DAzldpYTjrK3miC4lLfnIf3nspJe/h1jcQHXOxbu4/OdYhfAL2zXroaw09CQGkV6Zyv7Bz1412ZRp1IHCZypJbv0gHtMyJMRGbZLWqm9vxxBhff9woMqIYiDTURXGdhLU0Om4h5MCQiN5+3P8zOnGJWvP ops@derecom.it",
  :ssh_host_port => "7222",
  :ssh_guest_port => "22",
  :sudo_cmd => "echo '%p'|sudo -S sh '%f'",
  :shutdown_cmd => "/sbin/halt -h -p",
  :postinstall_files => [
    "repos.sh",
    "base.sh",
    "selinux.sh",
    "puppet.sh",
    "vagrant.sh",
    "virtualbox.sh",
    "cleanup.sh",
    "zerodisk.sh"
  ],
  :postinstall_timeout => 10000
})
