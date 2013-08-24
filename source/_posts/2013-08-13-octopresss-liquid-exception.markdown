---
layout: post
title: "Octopress's Liquid Exception"
date: 2013-08-13 18:47
comments: true
categories: erlang 
---


When I tried to publish a blog post which contains some erlang code, I got this error message

{{{ 

Liquid Exception: undefined method `[]' for nil:NilClass in 2013-08-04-simple-swap-calculation.markdown
}}}

It is because in erlang '%' is the comment character. I used '%%' to start a comment and it confuses Jekyll. Switching back to a single '%' fixes the problem.
