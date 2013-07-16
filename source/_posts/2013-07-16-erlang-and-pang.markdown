---
layout: post
title: "pong and pang in erlang"
date: 2013-07-16 08:00
comments: true
categories: erlang 
---


I know it is quite clever to use 'pang' to indciate the process does not exist. However both responses ('pong' and 'pang') just look too similar to each other if the terminal app uses a certain kind of font. Don't think i would enjoy it under stress in an operation/support situation.

{%codeblock lang:erlang %}
> net_adm:ping(exist@server).
pong
> net_adm:ping(notexist@server).
pang
{%endcodeblock %}
