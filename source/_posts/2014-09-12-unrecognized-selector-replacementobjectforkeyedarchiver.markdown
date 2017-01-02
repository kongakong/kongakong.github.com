---
layout: post
title: "Unrecognized selector -replacementObjectForKeyedArchiver: "
date: 2014-09-12 22:31
comments: true
categories: swift ios 
---


Here is the code in question:

    class Something: NSCoding {
        ...
   
    let smth = Something() 
    let data = NSKeyedArchiver.archivedDataWithRootObject(smth);

It throws this exception:

    2014-09-12 16:30:00.463 MyApp[30078:60b] *** NSForwarding: warning: object 0x7a04ac70 of class '_TtC8MyApp7Something' does not implement methodSignatureForSelector: -- trouble ahead
    Unrecognized selector -[MyApp.Something replacementObjectForKeyedArchiver:]


It is because `Something` does not inherit from `NSObject`


