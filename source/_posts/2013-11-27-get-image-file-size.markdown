---
layout: post
title: "Get image file size"
date: 2013-11-27 07:28
comments: true
categories: osx imagemagick image 
---

The `identify` command from ImageMagick can tell us the size of an image file 


e.g.

{% codeblock %}

$ identify source/images/grab.png 
source/images/grab.png PNG 1218x472 1218x472+0+0 8-bit sRGB 86KB 0.000u 0:00.000

{% endcodeblock %}
