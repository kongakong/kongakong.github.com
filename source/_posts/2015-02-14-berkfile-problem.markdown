---
layout: post
title: "berkshelf problem with kitchen converge"
date: 2015-02-14 12:44
comments: true
categories: berkshelf 
---

My `kitchen converge` throws a lot of error message

        $ kitchen converge
        -----> Starting Kitchen (v1.3.1)
        
        ....
        
        >>>>>> ------Exception-------
        >>>>>> Class: Kitchen::ActionFailed
        >>>>>> Message: Failed to complete #create action: [Expected process to exit with [0], but received '1'
        ---- Begin output of vagrant up --no-provision --provider=virtualbox ----
        STDOUT: Bringing machine 'default' up with 'virtualbox' provider...
        ==> default: Box 'opscode-ubuntu-12.04' could not be found. Attempting to find and install...
            default: Box Provider: virtualbox
            default: Box Version: >= 0
        ==> default: Adding box 'opscode-ubuntu-12.04' (v0) for provider: virtualbox
            default: Downloading: https://opscode-vm-bento.s3.amazonaws.com/vagrant/virtualbox/opscode_ubuntu-12.04_chef-provisionerless.box
        ==> default: Successfully added box 'opscode-ubuntu-12.04' (v0) for 'virtualbox'!
        STDERR: The following berks command failed to execute:

            /Users/antkong/.rvm/gems/ruby-2.2.0/bin/berks --version --format json

        The stdout and stderr are shown below:

            stdout:
            stderr: /Users/antkong/.rvm/rubies/ruby-2.2.0/lib/ruby/2.2.0/rubygems/dependency.rb:315:in `to_specs': Could not find 'berkshelf' (>= 0) among 122 total gem(s) (Gem::LoadError)
        Checked in 'GEM_PATH=/Users/antkong/.vagrant.d/gems:/opt/vagrant/bin/../embedded/gems', execute `gem env` for more information
          from /Users/antkong/.rvm/rubies/ruby-2.2.0/lib/ruby/2.2.0/rubygems/dependency.rb:324:in `to_spec'
          from /Users/antkong/.rvm/rubies/ruby-2.2.0/lib/ruby/2.2.0/rubygems/core_ext/kernel_gem.rb:64:in `gem'
          from /Users/antkong/.rvm/gems/ruby-2.2.0/bin/berks:22:in `<main>'


        It appears that you are not using the ChefDK. Please note that Vagrant Berkshelf
        works best when used with the ChefDK, and other installation methods are not
        officially supported.

        Please download and install the latest version of the ChefDK from:

            https://downloads.getchef.com/chef-dk

        and follow the installation instructions. Do not forget to add the ChefDK to
        your PATH.
        ---- End output of vagrant up --no-provision --provider=virtualbox ----
        Ran vagrant up --no-provision --provider=virtualbox returned 1]
        >>>>>> ----------------------
        >>>>>> Please see .kitchen/logs/kitchen.log for more details
        >>>>>> Also try running `kitchen diagnose --all` for configuration


It is related to the active `rvm`. Once I run `rvm use system`, the problem is resolved.

