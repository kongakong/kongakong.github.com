---
layout: post
title: "capture part of ios screen as image"
date: 2014-02-17 04:38
comments: true
categories: objective-c ios
---


{% codeblock lang:objective-c %}

UIGraphicsBeginImageContext(theCell.bounds.size);
[theCell.layer renderInContext:UIGraphicsGetCurrentContext()];
UIImage *renderedCellImage = UIGraphicsGetImageFromCurrentImageContext();
UIGraphicsEndImageContext();

{% endcodeblock %}


[source](http://stackoverflow.com/a/13656612/58129)
