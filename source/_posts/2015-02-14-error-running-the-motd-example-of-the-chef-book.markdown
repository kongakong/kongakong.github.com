---
layout: post
title: "error running the motd example of the chef book"
date: 2015-02-14 15:27
comments: true
categories: 
---


I am following the chapter "Your First Cookbook: Message of the Day" from `Learning Chef` by Mischa Taylor

When I run `kitchen converge`, I got these error messages:

                   ================================================================================
                   Error executing action `create` on resource 'cookbook_file[/etc/motd]'
                   ================================================================================

                   Chef::Exceptions::FileNotFound
                   ------------------------------
                   Cookbook 'motd' (0.1.0) does not contain a file at any of these locations:
                     files/ubuntu-12.04/motd
                     files/ubuntu/motd
                     files/default/motd
                     files/motd

                   Resource Declaration:
                   ---------------------
                   # In /tmp/kitchen/cookbooks/motd/recipes/default.rb

                     9: cookbook_file "/etc/motd" do
                    10:   source "motd"
                    11:   mode "0644"
                    12: end

                   Compiled Resource:
                   ------------------
                   # Declared in /tmp/kitchen/cookbooks/motd/recipes/default.rb:9:in `from_file'

                   cookbook_file("/etc/motd") do
                     provider Chef::Provider::CookbookFile
                     action "create"
                     retries 0
                     retry_delay 2
                     default_guard_interpreter :default
                     path "/etc/motd"
                     backup 5
                     atomic_update true
                     source "motd"
                     declared_type :cookbook_file
                     cookbook_name :motd
                     recipe_name "default"
                     mode "0644"
                   end


               Running handlers:
               [2015-02-14T04:22:29+00:00] ERROR: Running exception handlers
               Running handlers complete
               [2015-02-14T04:22:29+00:00] ERROR: Exception handlers complete
               [2015-02-14T04:22:29+00:00] FATAL: Stacktrace dumped to /tmp/kitchen/cache/chef-stacktrace.out
               Chef Client failed. 0 resources updated in 11.010074864 seconds
               [2015-02-14T04:22:29+00:00] ERROR: cookbook_file[/etc/motd] (motd::default line 9) had an error: Chef::Exceptions::FileNotFound: Cookbook 'motd' (0.1.0) does not contain a file at any of these locations:
                 files/ubuntu-12.04/motd
                 files/ubuntu/motd
                 files/default/motd
          1 Hello, world
                 files/motd
               [2015-02-14T04:22:29+00:00] FATAL: Chef::Exceptions::ChildConvergeError: Chef run process exited unsuccessfully (exit code 1)


It is because I forgot to create the file `files/default/motd` 
