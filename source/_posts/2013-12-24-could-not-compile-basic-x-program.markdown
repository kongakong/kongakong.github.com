---
layout: post
title: "Mach problem: Could not compile basic X program"
date: 2013-12-24 20:51
comments: true
categories: mach firefox mozilla ubuntu 
---

Here is the full error message:

{% codeblock %}


configure:27145:35: fatal error: X11/Intrinsic.h: No such file or directory

{% endcodeblock %}


**Solution**: ``sudo  apt-get install libxt-dev``
