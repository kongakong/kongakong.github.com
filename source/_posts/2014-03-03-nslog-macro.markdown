---
layout: post
title: "NSLog macro"
date: 2014-03-03 08:11
comments: true
categories: osx objective-c 
---

This is a useful marco for doing debug logging:

{% codeblock lang:objective-c %}

#define DLog(msg, ...) do { \
  NSString *dLogString = [NSString stringWithFormat:@"%s: %@", __PRETTY_FUNCTION__, msg]; \
  NSLog(@"%@", __VA_ARGS__); \
} while (0)


{% endcodeblock %}


Note the use of ``__PRETTY_FUNCTION__``

[Source](https://coderwall.com/p/2ko3la)
