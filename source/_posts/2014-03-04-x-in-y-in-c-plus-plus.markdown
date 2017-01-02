---
layout: post
title: "x in y in c++"
date: 2014-03-04 08:23
comments: true
categories: c++ python 
---

Equivalent to 

{% codeblock lang:python %}
   for x in y:
      # do something

{% endcodeblock %}

in C++ is

{% codeblock lang:c++ %}
void print_loop() {
    auto y = {0, 1, 2, 3, 4, 5, 6};
    
    for (auto i : y)
    {
        cout << '.' << i;
    }
}

{% endcodeblock %}

