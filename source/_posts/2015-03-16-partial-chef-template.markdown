---
layout: post
title: "partial chef template"
date: 2015-03-16 07:00
comments: true
categories: chef
---

## My story

I want to add a line to the /etc/apache2/envvars. However I did not install this file  using a cookbook. I installed it by `package apach2`. So partial template does not work for me.

I usds `FileEdit` instead

Having look through the `apache2` cookbook, I start to feel chef cookbook replicates a lot of what a `dpkg` is currently doing. Does it mean the downstream maintainer have to keep the cookbook up to date with various package management systems on every other platform?

## Resource and Documentation

https://github.com/danielsdeleo/partials

https://docs.chef.io/resource_template.html#partial-templates


