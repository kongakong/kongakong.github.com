---
layout: post
title: "scrollViewDidScroll is not called"
date: 2014-02-03 22:09
comments: true
categories: ios  scrollview
---

if ``- (void)scrollViewDidScroll:(UIScrollView *)scrollView `` of the delegate is not called, one should check:


* Has the ``delegate`` of the ScrollView been assigned?

* Have you set the ``contentSize``? Is it bigger than the bounds of the ScrollView?

* Is Autolayout on (if you use storyboard)?
