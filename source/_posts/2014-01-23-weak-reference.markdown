---
layout: post
title: "weak reference in block"
date: 2014-01-23 21:55
comments: true
categories: objective-c
---

To avoid cyclic reference when referring to an object outside a block, we can do the following:


{% codeblock lang:objective-c %}

    __weak typeof(self) weakSelf = self;
    gravity.action = ^{
        typeof(self) strongSelf = weakSelf;

{% endcodeblock %}
