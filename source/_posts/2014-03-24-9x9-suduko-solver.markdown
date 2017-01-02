---
layout: post
title: "9x9 suduko solver"
date: 2014-03-24 07:15
comments: true
categories: erlang suduko
---

Based on the [previous version](post/2014/03/16/2x2-suduko-solver)

It takes advantage of the parameter pattern matching of erlang, but not much else. There is a lot of room for improvement.


{% include_code sudoku9x9 lang:erlang linenos:true erlang/sudoku9x9.erl  %}
