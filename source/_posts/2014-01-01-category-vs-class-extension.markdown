---
layout: post
title: "category vs class extension"
date: 2014-01-01 07:25
comments: true
categories: objective-c 
---

Category does not allow addition of ivar. 

The restriction does not apply to class extension.

That's why I can do something like this:

{% codeblock lang:objective-c %}

@interface SOViewController ()
@property (weak, nonatomic) IBOutlet UIPickerView *Picker1;
@property (weak, nonatomic) IBOutlet UIPickerView *Picker2;

@end

{% endcodeblock %}
