---
layout: post
title: "autorelease in swift"
date: 2014-09-18 01:01
comments: true
categories: swift autorelease 
---

In Swift it may be necessary to use `autorelease` if we are using objective-c objects. e.g.

{% codeblock %}
   autoreleasepool {

        // do something expensive without using Obj-C code

    }

{% endcodeblock %}

This is a clang doc regarding [ARC and retain count](http://clang.llvm.org/docs/AutomaticReferenceCounting.html#retained-return-values). A lot of info to digest...
