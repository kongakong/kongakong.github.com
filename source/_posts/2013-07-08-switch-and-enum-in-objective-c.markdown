---
layout: post
title: "Switch and enum in Objective-c"
date: 2013-07-08 21:30
comments: true
categories: objective-c note_to_self
---


> Do not implement a default case in switch statements that handle enumerated types. This helps if you add to the enumeration, because the compiler will warn that the switch does not handle all the values.


from [Matt Galloway](http://www.informit.com/articles/article.aspx?p=2080040&seqNum=5)
