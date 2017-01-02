---
layout: post
title: "Converge failed with error message undefined local variable or method xxx"
date: 2015-03-15 09:35
comments: true
categories: chef vagrant 
---

Got this error message:

        ==> default: [2015-03-14T22:04:52+00:00] INFO: Running queued delayed notifications before re-raising exception
        ==> default: [2015-03-14T22:04:52+00:00] ERROR: Converge failed with error message undefined local variable or method `role' for #<Chef::Mixin::Template::Temp
        lateContext:0x000000032e4368>
        ==> default: [2015-03-14T22:04:52+00:00] DEBUG: Re-raising exception: Chef::Exceptions::RunFailedWrappingError - Found 1 errors, they are stored in the backtr
        ace
        ==> default: 1) Chef::Mixin::Template::TemplateError -  undefined local variable or method `role' for #<Chef::Mixin::Template::TemplateContext:0x000000032e436
        8>

This is my `template` resource:

        template '/etc/profile.d/server-env.sh' do
          source 'server/profile-env.erb'
          variables(
            :role => role
          )
        end


This is my template file `profile-env.erb`:

     set APP_ROLE=<%= role -%>
