---
layout: post
title: "NSNotification and view controller"
date: 2014-02-19 02:02
comments: true
categories: objective-c ios NSNotification
---

I have created a number of custom UIViewControllers for UICollectionViewCell programmatically (Apple makes it really easy to create good looking GUI. `AutoLayout` is not as bad as I heard from the blogsphere. But I digress).

Now I want to be able to have these UIViewController to subscribe to an adhoc NSNotification. I have ensured that there is no typo in the my notification name (The name is defined in a header file). I have also make sure the notification is fired on the main thread, like so:

    dispatch_async(dispatch_get_main_queue(),^{
        [[NSNotificationCenter defaultCenter] postNotificationName:NOTIFICATION_NAME object:self];
    });


However my UIViewControllers still do not receive any notification at all. 

It turns out it is because the controllers instances have gone out of scope. I found out by putting a `NSLog` in the `dealloc` method. It proves that the controllers have gone out of scope.

 In order to keep them around in memory, I added a `NSMutableDictionary` to keep reference to these controllers. Will test if it has any adverse effect or not.


