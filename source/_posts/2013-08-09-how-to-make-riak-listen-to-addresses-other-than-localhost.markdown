---
layout: post
title: "How to make riak listen to IP other than localhost"
date: 2013-08-09 18:53
comments: true
categories: erlang riak
---

By default a riak node will only listen to 127.0.0.1. 

Replace 127.0.0.1 with the host IP in app.config will solve this issue 
