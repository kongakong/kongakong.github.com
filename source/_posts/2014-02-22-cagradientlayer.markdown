---
layout: post
title: "CAGradientLayer"
date: 2014-02-22 13:57
comments: true
categories: ios7 ARC objective-c 
---

{% codeblock lang:objective-c %}
    CAGradientLayer *gradient = [CAGradientLayer layer];
    gradient.frame = self.view.bounds;
    gradient.colors = @[ [colorOne CGColor], [colorTwo CGColor] ];
    return gradient;
{% endcodeblock %}


The above code will cause this compiler error:

    /path/to/MyViewController.m:31:26: Collection element of type 'CGColorRef' (aka 'struct CGColor *') is not an Objective-C object


It can be fixed by casting to `id`

{% codeblock lang:objective-c %}
    CAGradientLayer *gradient = [CAGradientLayer layer];
    gradient.frame = self.view.bounds;
    gradient.colors = @[ (id)[colorOne CGColor], (id) [colorTwo CGColor] ];
    return gradient;
{% endcodeblock %}

It is a new behavior due to the use of ARC

