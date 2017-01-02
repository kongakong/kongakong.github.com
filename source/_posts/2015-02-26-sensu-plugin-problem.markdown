---
layout: post
title: "sensu plugin problem"
date: 2015-02-26 02:12
comments: true
categories: sensu ruby
---

Encountered problem when installing sensu-plugin

        $ gem install sensu-plugin --no-rdoc --no-ri
        /usr/bin/ruby1.9.1 extconf.rb
        /usr/lib/ruby/1.9.1/rubygems/custom_require.rb:36:in `require': cannot load such file -- mkmf (LoadError)
                from /usr/lib/ruby/1.9.1/rubygems/custom_require.rb:36:in `require'
                from extconf.rb:1:in `<main>'

This is the solution: use the ruby runtime embedded in sensu

        $ /opt/sensu/embedded/bin/gem install sensu-plugin
        Fetching: sensu-plugin-1.1.0.gem (100%)
        ERROR:  While executing gem ... (Gem::FilePermissionError)
            You don't have write permissions for the /opt/sensu/embedded/lib/ruby/gems/2.0.0 directory.
        vagrant@default-ubuntu-1404:~$ sudo /opt/sensu/embedded/bin/gem install sensu-plugin
        Successfully installed sensu-plugin-1.1.0
        Parsing documentation for sensu-plugin-1.1.0
        Installing ri documentation for sensu-plugin-1.1.0
        1 gem installed

