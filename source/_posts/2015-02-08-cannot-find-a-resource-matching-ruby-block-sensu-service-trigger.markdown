---
layout: post
title: "Cannot find a resource matching ruby_block[sensu_service_trigger]"
date: 2015-02-08 18:26
comments: true
categories: chef sensu sensu-client
---

This the error message:

        ==> default: ================================================================================
        ==> default: Error executing action `enable` on resource 'sensu_service[sensu-client]'
        ==> default: ================================================================================
        ==> default:
        ==> default: Chef::Exceptions::ResourceNotFound
        ==> default: ----------------------------------
        ==> default: Cannot find a resource matching ruby_block[sensu_service_trigger] (did you define it first?)
        ==> default:
        ==> default: Cookbook Trace:
        ==> default: ---------------
        ==> default: /tmp/vagrant-chef/c66d06dac7e6e1e4d559122d4d1a9f5c/cookbooks/sensu/providers/service.rb:52:in `block in load_current_resource'


It is because I did not include the `sensu::default` cookbook.
