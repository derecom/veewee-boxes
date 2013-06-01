require 'rake'

desc "Build [box_name] definition (VirtualBox provider)"
task :build, :box_name do |t, args|
  system("veewee vbox build '#{args[:box_name]}' --auto --force --nogui")
end
