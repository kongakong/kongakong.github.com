---
layout: post
title: "urlencode unicode"
date: 2014-02-23 07:25
comments: true
categories: python python3
---

Work in python 3

{% codeblock lang:python %}
$ python3
Python 3.3.4 (default, Feb 23 2014, 06:47:55) 
[GCC 4.2.1 Compatible Apple LLVM 5.0 (clang-500.2.79)] on darwin
Type "help", "copyright", "credits" or "license" for more information.
>>> import urllib.parse
>>> urllib.parse.urlencode({'a':chr(400)})
'a=%C6%90'

{% endcodeblock %}

Does not work in python

{% codeblock lang:python %}

$ python
Python 2.7.6 |Anaconda 1.8.0 (x86_64)| (default, Jan 10 2014, 11:23:15) 
[GCC 4.0.1 (Apple Inc. build 5493)] on darwin
Type "help", "copyright", "credits" or "license" for more information.
>>> import urllib
>>> urllib.urlencode({'a':chr(400)})
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
ValueError: chr() arg not in range(256)
>>> urllib.urlencode({'a':u"\u0400"})
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
  File "/Users/antkong/anaconda/lib/python2.7/urllib.py", line 1329, in urlencode
    v = quote_plus(str(v))
UnicodeEncodeError: 'ascii' codec can't encode character u'\u0400' in position 0: ordinal not in range(128)


{% endcodeblock %}
