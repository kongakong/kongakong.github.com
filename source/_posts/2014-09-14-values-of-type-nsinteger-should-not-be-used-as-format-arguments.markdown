---
layout: post
title: "Values of type NSInteger should not be used as format arguments"
date: 2014-09-14 18:01
comments: true
categories: objective-c
---

In this example,

{% codeblock %}
    NSInteger val = 15000;
    NSLog(@"%i", val);
{% endcodeblock %}

XCode will flag this error

    Values of type "NSInteger" should not be used as format arguments: add an explicit cast to 'long' instead.


It is because NSInteger can be 32-bit or 64-bit, depending on the platform, the compiler recommends to add a cast to long generally.
