---
layout: post
title: "init chain rule in swift"
date: 2014-09-18 16:30
comments: true
categories: swift 
---

> Swift has a narrow rule whereby a class with a designated initializer with no arguments is implicitly called by dereived class initializers if no other super.init call is specified and it is otherwise unambiguous.  This is why you don't need to explicitly call super.init() when subclassing NSObject, for example.
