---
layout: post
title: "Assignment statement in Lua vs Python"
date: 2013-12-05 07:19
comments: true
categories: lua python assignment 
---

Given `a` is an array of  `[1, 1, 1, 1, 1, 1, 1, 1, 1, 1]`

and this bit of code

{% codeblock %}
i = 3
i, a[i] = i+1, 20

{% endcodeblock %}

In lua, `a` will become

{% codeblock %}
{1, 1, 1, 20, 1, 1, 1, 1, 1, 1}
{% endcodeblock %}


Whereas in python it will become

{% codeblock %}
>>> a
[1, 1, 1, 1, 20, 1, 1, 1, 1, 1]
{% endcodeblock %}


And it is a non-issue in erlang because it does not support mutable variable
