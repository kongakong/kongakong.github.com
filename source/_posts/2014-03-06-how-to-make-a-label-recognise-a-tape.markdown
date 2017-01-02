---
layout: post
title: "how to make a label recognise a tape"
date: 2014-03-06 07:44
comments: true
categories: objective-c osx 
---

Step 1) Need to implement a selector to handle the gesture recognizer's callback

{% codeblock lang:objective-c %}

-(void) handleSingleTap:(UIGestureRecognizer *)gestureRecognizer  {
    NSLog(@"handleSingleTap called");
}

{% endcodeblock %}


Step 2) Create and assign a gesture recognizer to a UILabel


{% codeblock lang:objective-c %}
    UITapGestureRecognizer *singleTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleSingleTap:)];
    [self.lblHour addGestureRecognizer:singleTap];

{% endcodeblock %}

Step 3) **Important** Must make sure `setUserInteractionEnabled` of the UILabel is set

{% codeblock lang:objective-c %}
    [self.lblHour setUserInteractionEnabled:YES];

{% endcodeblock %}
