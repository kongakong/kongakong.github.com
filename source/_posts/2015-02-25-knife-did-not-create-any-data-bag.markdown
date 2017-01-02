---
layout: post
title: "knife did not create any data bag"
date: 2015-02-25 11:36
comments: true
categories: knife chef
---

I want to create an offline cookbook. I want to create a user databag to use the `users` recipe. I ran

    knife data bag create users

but it created nothing in the databag folder.

It turns out I need to run it in local mode and give it a user name:

    knife data bag create users myuser -z
