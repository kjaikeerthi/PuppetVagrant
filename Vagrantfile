# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|

  # meta_vm = {
  #   'ip'   => '192.168.1.' + (element.sum(5) + 9).to_s,
  #   'name' => 'aserver',
  #   'vm'   => :a
  # }
  config.vm.box = "base"
  config.vm.boot_mode = :gui
  config.vm.network "33.33.33.10"
  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "manifests"
    puppet.manifest_file  = "site.pp"
    puppet.module_path    = "modules"
  end
end
