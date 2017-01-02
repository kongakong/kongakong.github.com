---
layout: post
title: "compile debug_info"
date: 2014-01-18 13:04
comments: true
categories: erlang
---

After coming this SO question about (debug_info)[http://stackoverflow.com/questions/6830271/requesting-debug-info-in-an-erlang-module-using-compile], I am curious if it is indeed a problem.

Based on the (documentation)[http://www.erlang.org/doc/man/compile.html#debug_info], this should enable the addition of debug info to the .beam files.

{% codeblock lang:erlang %}
-module(testdebuginfo).
-compile(debug_info).
{% endcodeblock %}

However neither using ``c`` in erlang shell or using ``erlc`` directly will put the debug info into beam file.

I can only implant debug info through erlang shell like this:

{% codeblock %}
4> debugger:start().

=ERROR REPORT==== 23-Jan-2014::12:23:39 ===
ERROR: Could not find 'wxe_driver.so' in: /usr/local/Cellar/erlang/R16B03/lib/erlang/lib/wx-1.1.1/priv
{ok,<0.49.0>}
5> c(testdebuginfo, [debug_info]).
{ok,testdebuginfo}


{% endcodeblock  %}
