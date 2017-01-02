---
layout: post
title: "Mach problem: gstreamer backend"
date: 2013-12-24 20:49
comments: true
categories: firefox mozilla mach ubuntu
---

This is the full error message:

{% codeblock %}

0:09.25 configure:20757: checking for gstreamer-0.10 >= 0.10.25
 0:09.25                       gstreamer-app-0.10
 0:09.25                       gstreamer-plugins-base-0.10
 0:09.25 configure: error: gstreamer and gstreamer-plugins-base development packages are needed to build gstreamer backend. Install them or disable gstreamer support with --disable-gstreamer
 0:09.26 *** Fix above errors and then restart with\
 0:09.26                "/usr/bin/make -f client.mk build"
 0:09.26 make[2]: *** [configure] Error 1
 0:09.26 make[1]: *** [obj-x86_64-unknown-linux-gnu/Makefile] Error 2
 0:09.26 make: *** [build] Error 2
 0:09.27 0 compiler warnings present.

{% endcodeblock %} 


**Solution**: ``sudo apt-get install -y libgstreamer-plugins-base0.10-dev``
