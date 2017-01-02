---
layout: post
title: "cannot init a class object"
date: 2013-12-16 20:39
comments: true
categories: objective-c ios 
---


Got this exception

{% codeblock  %}
2013-12-16 17:35:59.976 MyProject[41964:70b] *** Terminating app due to uncaught 
exception 'NSInvalidArgumentException', reason: '*** +[MyClass<0x100084d80> init]: cannot init a class object.'

{% endcodeblock %}

It is because I have mistakenly written


{% codeblock lang:objective-c  %}
[[MyClass init] alloc];
{% endcodeblock %}

instead of

{% codeblock lang:objective-c  %}
[[MyClass alloc] init];
{% endcodeblock %}
