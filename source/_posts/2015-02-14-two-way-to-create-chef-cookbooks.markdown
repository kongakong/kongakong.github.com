---
layout: post
title: "Two way to create chef cookbooks"
date: 2015-02-14 01:49
comments: true
categories: chef cookbook
---

lets say we want to create a cookbook called `example`

Method 1)

     chef generate cookbook example


Method 2)

    knife cookbook create example --cookbook-path .
    cd example
    kitchen init --create-gemfile
    bundle install

