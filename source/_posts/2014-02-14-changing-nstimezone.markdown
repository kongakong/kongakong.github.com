---
layout: post
title: "Changing NSTimeZone"
date: 2014-02-14 22:19
comments: true
categories: ios objective-c 
---

To convert a NSDate into another Timezone

{% codeblock lang:objective-c %}

    NSCalendarUnit val = NSCalendarUnitYear|NSCalendarUnitHour;
    NSCalendar* dupCal =  [[NSCalendar currentCalendar] copy];
    
    [dupCal setTimeZone:toTimeZone]; // setting to a different timezone
    NSDateComponents *dupComponents = [dupCal components:val fromDate:[NSDate date]];

    // print out the time and check
    NSLog(@"%ld", (long)[dupComponents hour]);

{% endcodeblock %}
