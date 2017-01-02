---
layout: post
title: "Swift ternanry operator ?"
date: 2014-09-18 01:25
comments: true
categories: swift  
---

This will cause a compiler error:

{% codeblock %}
let a=3
let b=4
 
let max = (a>b)? a:b // Compiler Error: Consecutive statements on a line must be separated by ';'"
{% endcodeblock %}

Putting spaces around operators will resolve the compiler error i.e.

    let max = a > b ? a : b

