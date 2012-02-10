import "/tmp/vagrant-puppet/modules-0/rvm/manifests/init.pp"


class rvm{

    include rvm
    if $rvm_installed == "true" {
        rvm_system_ruby {
          'ruby-1.9.2-p290':
            ensure => 'present',
            default_use => true;
        }
        rvm_gemset {
          "ruby-1.9.2-p290@myproject":
            ensure => present,
            require => Rvm_system_ruby['ruby-1.9.2-p290'];
        }
    }
}


include rvm
include rvm

group { "puppet": 
    ensure => "present", 
} 

package { "monit": ensure => "installed" }

exec { "apt-get-update" :
    command => "/usr/bin/apt-get update",
    require => File["/etc/welcome"]
}

file { "/etc/welcome":
    ensure => "present",
    content => "welcome aboard"
}

