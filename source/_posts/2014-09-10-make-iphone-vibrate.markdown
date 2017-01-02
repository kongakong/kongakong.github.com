---
layout: post
title: "make iphone vibrate"
date: 2014-09-10 13:31
comments: true
categories: objective-c swift iphone
---

Use these APIs to set the iphone to vibrate


    AudioServicesPlayAlertSound(kSystemSoundID_Vibrate);
    AudioServicesPlaySystemSound(kSystemSoundID_Vibrate);


The first function plays a beep sound if the devices don’t support vibration. The second function on the other hand does nothing on unsupported devices. 


if `AVRecorder` is running, iphone will not vibrate too.

Source: [Stackoverflow](http://stackoverflow.com/questions/4724980/making-the-iphone-vibrate)

