---
layout: post
title: "sometimes it is not obvious at the beginning"
date: 2014-03-15 15:49
comments: true
categories: erlang 
---

I want to create a function for use as a predicate in the function `lists:any`. I try it first in erlang shell,


    137> F = fun(X) -> X == 1 end.
    #Fun<erl_eval.6.80484245>

It works as expected:

    138> lists:any(F, [2, 3]).
    false
    139> lists:any(F, [2, 1, 3]).
    true

Then I want to change the condition to something else, and I got an error message:

    140> F = fun(X) -> X /= 1 end.
    ** exception error: no match of right hand side value #Fun<erl_eval.6.80484245>

My first thought: It is interesting... Did I mix up the 'not equal' operator in erlang? Maybe it is not '/='?

It turns out it is because the code at 140 is effectively an attempt to rebound the `F` variable. The error message is actually about this rather than the operator. I do not usually test code in the erlang shell, so it took me a while to figure it out.




