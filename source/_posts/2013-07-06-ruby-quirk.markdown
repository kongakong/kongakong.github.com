---
layout: post
title: "Ruby quirk?"
date: 2013-07-06 08:06
comments: true
categories: ruby
---

Have absolutely zero knowledge of Ruby, although I am planning to learn more about this langauge since I started using Octopress.

Came across this code snippet in [this tweet](https://twitter.com/garybernhardt/status/352864696547803136)

The behavior does look a bit odd from a python prespective.

{% codeblock lang:ruby %}

mbp002:~ me$ irb
2.0.0p195 :001 > 1,2
SyntaxError: (irb):1: syntax error, unexpected ',', expecting end-of-input
    from /Users/me/.rvm/rubies/ruby-2.0.0-p195/bin/irb:16:in `<main>'
2.0.0p195 :003 > x=1,y=2
 => [1, 2] 
2.0.0p195 :004 > x
 => [1, 2] 
2.0.0p195 :005 > y
 => 2 


{% endcodeblock %}


Apparently it is treated like

{% codeblock lang:ruby %}

>> x = [1, (y = 2)]


{% endcodeblock %}
