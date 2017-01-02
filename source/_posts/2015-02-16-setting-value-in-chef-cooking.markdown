---
layout: post
title: "setting value in chef cooking"
date: 2015-02-16 08:47
comments: true
categories: chef 
---

If you set a variable this way in a cookbook:

    node['mysqld']['root_password'] = 'password'

you will get this exception

       Chef::Exceptions::ImmutableAttributeModification
       ------------------------------------------------
       Node attributes are read-only when you do not specify which precedence level to set. To set an attribute use code like `node.default["key"] = "value"'
