---
layout: post
title: "prevent failed task stops provisioning"
date: 2015-03-03 08:50
comments: true
categories: gem chef
---

I mentioned eariler I have ecountered problem when installing some gem like [this](/post/2015/02/26/gem-install-hipchat)

Here is a way to prevent failure stops the chef provision: use **ignore_failure**

          gem_package "mail" do
            gem_binary '/opt/sensu/embedded/bin/gem'
            ignore_failure true
            action :install
          end


You can always go back and reinstall the gem later. You don't want to 10 to 20 min provisioning exercise aborted due to a temporay ruby gem installation issue.



