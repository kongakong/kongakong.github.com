---
layout: post
title: "Mixing C++ and Objective-c in XCode"
date: 2014-02-02 21:04
comments: true
categories: c++ objective-c 
---

The c++ header keeps getting a compiler error:

    'iostream' file not found 

Here is the solution: wrap the ``#include`` inside ``#ifdef __cplus``

{% codeblock lang:objective-c %}

#ifdef __cplus
#include <iostream>
#endif

{% endcodeblock %}


