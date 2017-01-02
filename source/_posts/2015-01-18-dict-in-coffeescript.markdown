---
layout: post
title: "dict in coffeescript"
date: 2015-01-18 14:50
comments: true
categories: coffeescript
---

You can create a dictionary in coffeescript in several ways:

Probably the most elegant style

        d = 
          b: 1
          c: 2


This also works

        d = { b: 1, c: 2}


If you need to span multiple lines:

        d = { b: 1 , \
          c: 2}
