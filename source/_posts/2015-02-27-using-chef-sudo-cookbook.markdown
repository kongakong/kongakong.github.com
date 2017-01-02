---
layout: post
title: "Using chef sudo cookbook"
date: 2015-02-27 12:53
comments: true
categories: chef sudo 
---

If you want to LWRP to define a sudo user, do not use

       include_recipe 'sudo'

It will blow away your default `/etc/sudoers`


