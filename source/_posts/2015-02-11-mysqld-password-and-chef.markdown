---
layout: post
title: "Providing mysqld password to chef provisioner in vagrant"
date: 2015-02-11 05:04
comments: true
categories: chef mysql mysqld
---

I add a chef `mysqld` receipt to the Vagrant file and here is the error from `vagrant up`:

        ==> default: Required argument password is missing!
        ==> default:
        ==> default: Cookbook Trace:
        ==> default: ---------------
        ==> default:   /tmp/vagrant-chef/3aa2e36871bb373e4212367ce1b7d9af/cookbooks/mysqld/recipes/configure.rb:26:in `block in from_file'
        ==> default:   /tmp/vagrant-chef/3aa2e36871bb373e4212367ce1b7d9af/cookbooks/mysqld/recipes/configure.rb:25:in `from_file'
        ==> default:   /tmp/vagrant-chef/3aa2e36871bb373e4212367ce1b7d9af/cookbooks/mysqld/recipes/default.rb:22:in `from_file'
        ==> default:
        ==> default: Relevant File Content:
        ==> default: ----------------------
        ==> default: /tmp/vagrant-chef/3aa2e36871bb373e4212367ce1b7d9af/cookbooks/mysqld/recipes/configure.rb:
        ==> default:
        ==> default:  19:  #
        ==> default:  20:
        ==> default:
        ==> default:  21:  # Configure mysql/mariadb according to attributes
        ==> default:  22:  mysqld 'default'
        ==> default:  23:
        ==> default:  24:  # Set password according to attribute, if set
        ==> default:  25:  mysqld_password 'root' do
        ==> default:  26>>   password node['mysqld']['root_password']
        ==> default:
        ==> default:  27:    only_if { node['mysqld']['root_password'] }
        ==> default:  28:  end
        ==> default:  29:

Solution: Add this to set the `root_password`:

    chef.json = {
      :mysqld   => {
        :root_password => "test"
      }
    }


Now you can connect to the mysql server by running

     mysql -u root -p 

