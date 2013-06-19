---
layout: post
title: "How to install beautifulsoup in python3"
date: 2013-06-20 08:14
comments: true
categories: 
---

This will fail immediately

``` sh
$   /usr/local/bin/easy_install3 BeautifulSoup
```

with error message

```
  File "/usr/local/Cellar/python3/3.3.0/Frameworks/Python.framework/Versions/3.3/lib/python3.3/site-packages/distribute-0.6.28-py3.3.egg/setuptools/sandbox.py", line 33, in <lambda>
    ).read(), "setup.py", 'exec'),
  File "setup.py", line 22
    print "Unit tests have failed!"
```
This is the right way

```
$  /usr/local/bin/pip3 install beautifulsoup4
```
