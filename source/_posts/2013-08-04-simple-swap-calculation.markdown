---
layout: post
title: "Simple Swap Calculation"
date: 2013-08-04 17:34
comments: true
categories: erlang swap
---


**Question**: Today is 1st of January. The residual maturity of a swap is 9 months. The notional 
 principal is $1,000. You receive 3% fixed semiannual payments and pay semiannual 
 cash flows based on the 6-month Libor rate on March 31st and September 30th. 
 Next payment is based on Libor at 5%. The current term structure is 
 R(0, 0.25) = 4% and R(0, 0.75) = 5%.

Find the value of the fixed leg, floating leg and the swap.

{% codeblock lang:erlang %}

-module(swap).

-export([example1/0]).

example1() ->
    Fixed = example1_fixedleg(),
    Floating = example1_floatingleg(),
    {Fixed, Floating, Fixed-Floating}.

example1_fixedleg() ->
    50 / math:pow(1+0.03, 1/4) + 1050/math:pow(1+0.03, 3/4).

example1_floatingleg() ->
    %% 25 is 1000 * 5% * 1/2
    25 / math:pow(1+0.04, 1/4) + 1000/math:pow(1+0.05, 1/4).

{% endcodeblock %}


**Answer**: {1076.6104451243634,1012.6326158166382,63.97782930772519}
