---
layout: post
title: "ownership rule exception"
date: 2013-12-19 07:26
comments: true
categories: ios objective-c 
---

Normally an observer or a delegate owner should not hold a strong reference to a callback or a delegate.

The two well-known exceptions are: an NSURLConnection ownes its delegate while the connection is running, and an NSTimer ownes its target while the timer is valid

