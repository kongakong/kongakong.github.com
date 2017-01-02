---
layout: post
title: "sensu checklog issue"
date: 2015-04-15 16:01
comments: true
categories: sensu check-log 
---


My check log job suddenly fires a lot of exception:

    ALERT - [MyServer/check_log] - Check failed to run: invalid byte sequence in US-ASCII, ["/etc/sensu/plugins/check-log.rb:187:in `match'", "/etc/sensu/plugins/check-log.rb:187:in `match'", "/etc/sensu/plugins/check-log.rb:187:in `block in search_log'", "/etc/sensu/plugins/check-log.rb:184:in `each_line'", "/etc/sensu/plugins/check-log.rb:184:in `search_log'", "/etc/sensu/plugins/check-log.rb:136:in `block in run'", "/etc/sensu/plugins/check-log.rb:130:in `each'", "/etc/sensu/plugins/check-log.rb:130:in `run'", "/opt/sensu/embedded/lib/ruby/gems/2.0.0/gems/sensu-plugin-1.1.0/lib/sensu-plugin/cli.rb:56:in `block in <class:cli>'"] .

But there is nothing wrong with the log file itself. No binary characters and any other rubbish.

I fixed it by removing the related file in the check log job's state directory.
