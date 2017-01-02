---
layout: post
title: "missing the viewDidLoad event"
date: 2014-02-11 08:12
comments: true
categories: ios objective-c UIViewController 
---

This is my original code. It does the job and put a specialised view into a cell of a UICollectionView

{% codeblock lang:objective-c %}

    TT2TimeViewController* controller = [[TT2TimeViewController alloc] init];
    controller.city = city;
    UIView* view = [[[NSBundle mainBundle] loadNibNamed:@"TT2TimeViewController"
                                                  owner:controller
                                                options:nil] objectAtIndex:0];


{% endcodeblock %}

However, for some reason, the view controller `controller` will miss the ViewDidLoad event.  The selector is not called at all.

This problem is resolved if I switch to use `initWithNibName` instead:


{% codeblock lang:objective-c %}
    TT2TimeViewController* controller = [[TT2TimeViewController alloc] initWithNibName:@"TT2TimeViewController"
                                            bundle:[NSBundle mainBundle]];



{% endcodeblock %}
