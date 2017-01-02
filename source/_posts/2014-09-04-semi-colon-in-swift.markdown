---
layout: post
title: "semi-colon in swift"
date: 2014-09-04 14:52
comments: true
categories: swift
---

The perfered style of semi-colon placement in swift is:

{% codeblock %}

struct Foo: SomeProtocol {}
class Foo: SomeProtocol {}

var x: Int
func foo(x: Int) {}
func bar(x: (y: Int) -> Int) -> Double {}
let dict = ["key": value]

{% endcodeblock %}

i.e. No space before the semi-colon. One space after the semi-colon
