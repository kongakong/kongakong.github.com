---
layout: post
title: "how to get sensu hipchat plugin to work"
date: 2015-02-28 18:55
comments: true
categories: hipchat sensu plugin 
---

I encountered two issues when I want to deploy the hipchat notification handler.

Firstly it throws an exception of 'Connection refused'. But api.hipchat.com is reachable. I have verified by running `curl` against the v2 api. 

        $ cat /tmp/t.json |sudo /opt/sensu/embedded/bin/ruby  /etc/sensu/handlers/notification/hipchat.rb -j /etc/sensu
        /handlers/notification/hipchat.json
        /opt/sensu/embedded/lib/ruby/2.0.0/net/http.rb:878:in `initialize': Connection refused - connect(2) (Errno::ECONNREFUSED)
                from /opt/sensu/embedded/lib/ruby/2.0.0/net/http.rb:878:in `open'
                from /opt/sensu/embedded/lib/ruby/2.0.0/net/http.rb:878:in `block in connect'
                from /opt/sensu/embedded/lib/ruby/2.0.0/timeout.rb:52:in `timeout'
                from /opt/sensu/embedded/lib/ruby/2.0.0/net/http.rb:877:in `connect'
                from /opt/sensu/embedded/lib/ruby/2.0.0/net/http.rb:862:in `do_start'
                from /opt/sensu/embedded/lib/ruby/2.0.0/net/http.rb:851:in `start'
                from /opt/sensu/embedded/lib/ruby/2.0.0/net/http.rb:1367:in `request'
                from /opt/sensu/embedded/lib/ruby/gems/2.0.0/gems/sensu-plugin-1.1.0/lib/sensu-handler.rb:85:in `api_request'
                from /opt/sensu/embedded/lib/ruby/gems/2.0.0/gems/sensu-plugin-1.1.0/lib/sensu-handler.rb:120:in `stash_exists?'
                from /opt/sensu/embedded/lib/ruby/gems/2.0.0/gems/sensu-plugin-1.1.0/lib/sensu-handler.rb:132:in `block (2 levels) in filter_silenced'
                from /opt/sensu/embedded/lib/ruby/2.0.0/timeout.rb:66:in `timeout'
                from /opt/sensu/embedded/lib/ruby/2.0.0/timeout.rb:97:in `timeout'

It turns out all sensu plugin has a dependeny on the sensu api. I did not start the sensu api when I tested, and hence the exception.

Then I got a json config file related problem:

        $ cat /tmp/t.json |sudo /opt/sensu/embedded/bin/ruby  /etc/sensu/handlers/notification/hipchat.rb -j /handlers/notification/hipchat.json
        /etc/sensu/handlers/notification/hipchat.rb:44:in `handle': undefined method `[]' for nil:NilClass (NoMethodError)
                from /opt/sensu/embedded/lib/ruby/gems/2.0.0/gems/sensu-plugin-1.1.0/lib/sensu-handler.rb:55:in `block in <class:Handler>'

`-j` does not work as I expected. The script actually expects the .json configuration in the /opt/sensu/conf.d
