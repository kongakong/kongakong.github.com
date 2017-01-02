---
layout: post
title: "gem install hipchat problem 2"
date: 2015-02-27 05:41
comments: true
categories: 
---

Error message:

       [2015-02-26T11:49:52+00:00] ERROR: gem_package[hipchat] (zeetings::sensu_resource line 27) had an error: Mixlib::ShellOut::ShellCommandFailed: Expected process to exit with [0], but received '2'
       ---- Begin output of /opt/sensu/embedded/bin/gem install hipchat -q --no-rdoc --no-ri -v "1.4.0" ----
       STDOUT: 
       STDERR: ERROR:  Could not find a valid gem 'hipchat' (= 1.4.0), here is why:
          Unable to download data from https://rubygems.org/ - no such name (https://rubygems.org/quick/Marshal.4.8/hipchat-1.4.0.gemspec.rz)
       ERROR:  Possible alternatives: hipchat
       ---- End output of /opt/sensu/embedded/bin/gem install hipchat -q --no-rdoc --no-ri -v "1.4.0" ----
       Ran /opt/sensu/embedded/bin/gem install hipchat -q --no-rdoc --no-ri -v "1.4.0" returned 2
       [2015-02-26T11:49:52+00:00] FATAL: Chef::Exceptions::ChildConvergeError: Chef run process exited unsuccessfully (exit code 1)
