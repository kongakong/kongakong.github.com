---
layout: post
title: "Current time in objective-c and python"
date: 2014-03-06 18:49
comments: true
categories: objective-c python 
---

To get the current time in python

{% codeblock lang:python %}

>>> import datetime
>>> datetime.datetime.now()
datetime.datetime(2014, 3, 6, 18, 51, 13, 321003)

{% endcodeblock %}

and in objective-c

{% codeblock lang:objective-c %}

NSDate* date = [NSDate date];
NSLog(@"%@", date);

{% endcodeblock %}
