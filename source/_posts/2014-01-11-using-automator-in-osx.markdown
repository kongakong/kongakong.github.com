---
layout: post
title: "Using automator in OSX"
date: 2014-01-11 15:29
comments: true
categories: osx automator 
---

I want to implement a service in OSX such that I can easily shrink the size of image files in a folder to half of their original size. 

This is what I have come up with at the end.

{% img images/automator.png 860 617 %}


Lessons/Observations: 

* For non-standard action (e.g. copy files to a folder which is unknown at the workflow design time), I need to add an action to assign input value to a variable and then refer to it in subsequent task.

* A lot of useful actions are already built in e.g. Scale image

* Saving it to the default automator folder will automatically register the service to Finder.


