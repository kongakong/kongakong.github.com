---
layout: post
title: "NSInvalidArgumentException when using count"
date: 2013-12-03 22:04
comments: true
categories: osx objective-c 
---

Oops.

{% codeblock %}
2013-12-03 22:01:10.281 Questions[50951:70b] -[NSNull count]: unrecognized selector sent to instance 0x101cb4b40
2013-12-03 22:01:10.311 Questions[50951:70b] *** Terminating app due to uncaught exception 'NSInvalidArgumentException', reason: '-[NSNull count]: unrecognized selector sent to instance 0x101cb4b40'


{% endcodeblock %}

**Solution:**

Check if the target is indeed an array

{% codeblock %}
if ([anObject isKindOfClass:[NSArray class]]) { // Add a check here
    NSInteger count = [anObject count];
    ...
}
{% endcodeblock %}
