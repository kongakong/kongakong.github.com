---
layout: post
title: "pandas - dateutil.parser import error"
date: 2014-01-03 21:24
comments: true
categories: osx homebrew python 
---

Try to run ``import pandas`` in python. Encountered this:

{% codeblock lang:python %}

>>> import pandas
No module named dateutil.parser
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
  File "/usr/local/Cellar/python/2.7.6/Frameworks/Python.framework/Versions/2.7/lib/python2.7/site-packages/pandas-0.12.0-py2.7-macosx-10.9-x86_64.egg/pandas/__init__.py", line 6, in <module>
    from . import hashtable, tslib, lib
  File "tslib.pyx", line 31, in init pandas.tslib (pandas/tslib.c:48782)
ImportError: No module named dateutil.parser

{% endcodeblock %}

Fixed by running

{% codeblock lang:bash %}
$ pip install python-dateutil

{% endcodeblock %}
