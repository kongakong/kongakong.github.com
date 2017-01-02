---
layout: post
title: "dispatch_once"
date: 2014-02-09 21:22
comments: true
categories: ios objective-c 
---
Wanted to declare and initialise a static variable in a .m file. 

Objective-c compiler does not like it, and raise this error message:

    Initializer element is not a compile-time constant

I like the explanation [here](http://stackoverflow.com/a/11934961/58129) on Stackoverflow:

> Objective-C is a strict superset of C. It's illegal in C to have any executable code outside of a function (or method in Objective-C).


Leading from this answer I discovered that I should use `dispatch_once` for initialisation




