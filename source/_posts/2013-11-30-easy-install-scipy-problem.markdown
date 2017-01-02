---
layout: post
title: "easy_install scipy problem"
date: 2013-11-30 23:22
comments: true
categories: osx brew easy_install python scipy 
---

No luck with scipy so far

{% codeblock %}
$ easy_install scipy
Searching for scipy
Reading https://pypi.python.org/simple/scipy/
Best match: scipy 0.13.1
Downloading https://pypi.python.org/packages/source/s/scipy/scipy-0.13.1.zip#md5=485411032b02583b4eb63caec6f2a916
Processing scipy-0.13.1.zip
Writing /var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-fmDJqI/scipy-0.13.1/setup.cfg
Running scipy-0.13.1/setup.py -q bdist_egg --dist-dir /var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-fmDJqI/scipy-0.13.1/egg-dist-tmp-vWQr5z
Running from scipy source directory.
Splitting linalg.interpolative Fortran source files
/usr/local/Cellar/python/2.7.6/Frameworks/Python.framework/Versions/2.7/lib/python2.7/site-packages/numpy-1.8.0-py2.7-macosx-10.9-x86_64.egg/numpy/distutils/system_info.py:507: UserWarning: 
    UMFPACK sparse solver (http://www.cise.ufl.edu/research/sparse/umfpack/)
    not found. Directories to search for the libraries can be specified in the
    numpy/distutils/site.cfg file (section [umfpack]) or by setting
    the UMFPACK environment variable.
  warnings.warn(self.notfounderror.__doc__)
error: None

{% endcodeblock %}
