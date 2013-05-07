Veewee::Definition.declare({
  :cpu_count => '1',
  :memory_size=> '480',
  :disk_size => '10140',
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
  :ssh_key => "ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEA5AUHz7ZCF9aa9iSaxteon/JAb1U+mGaRdESY7rqCzbvyPgSSJeBvTCQuq1admJIitZhavb7B/esXXcQXXujLy5FtzDPC8ma1BjJGkl5Nru9cbRAydCL5A40BXX0gmd9uQekCObudQFhNLeXvHv0uCD2VUXGyNahtN3BOZN2VPmAcT9mxdTuBuim8hs9B/P3ExVDlSGqBxt4aForvAB0n0cuQemCgVGmJja6Hx9zWnkFrRqjAQNAN2ah2XvnaJbgM0gOO0lrCVpF9cyEO7scT8W/bMkqE50F2wRhwix341unfDuWtZIMMkRhcYjM4dwXedS/slYt2cX5kxduFJ/26JQ== stefano.zanella",
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
