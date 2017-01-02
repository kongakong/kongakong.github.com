---
layout: post
title: "How to do a multi-line string in objective-c"
date: 2013-12-19 07:33
comments: true
categories: ios objective-c
---

Here is an example:

{% codeblock lang:objective-c %}

 NSString* s = @"{" \
    " key1 = \"value1\" \
    " }";


{% endcodeblock %}
