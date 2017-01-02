---
layout: post
title: "riak allow-multi"
date: 2013-08-15 01:04
comments: true
categories: erlang riak
---

I could not create a write conflict situation. 

It turns out it is because I did not set the __allow_multi__ property

Here is the command line:

    curl -i -XPUT http://riak001:8098/riak/cart -H "Content-Type:application/json" -d '{"props":{"allow_mult":1} }'
