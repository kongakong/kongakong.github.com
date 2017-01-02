---
layout: post
title: "conda update"
date: 2014-02-15 19:51
comments: true
categories: python ipython conda 
---

At first I am confused by this `conda` output. It seems suggest `conda` is going to upgrade python even though there is no new version of python.

{% codeblock %}

$ conda update python
Updating conda environment at /Users/antkong/anaconda

The following packages will be downloaded:

    package                    |            build
    ---------------------------|-----------------
    conda-3.0.4                |           py27_0         103 KB
    openssl-1.0.1c             |                0         2.1 MB
    python-2.7.6               |                1         9.9 MB
    readline-6.2               |                2         275 KB

The following packages will be UN-linked:

    package                    |            build
    ---------------------------|-----------------
    conda-2.2.7                |           py27_0
    python-2.7.6               |                0
    readline-6.2               |                1

The following packages will be linked:

    package                    |            build
    ---------------------------|-----------------
    conda-3.0.4                |           py27_0   hard-link
    openssl-1.0.1c             |                0   hard-link
    python-2.7.6               |                1   hard-link
    readline-6.2               |                2   hard-link

Proceed ([y]/n)? 


{% endcodeblock %}


It turns out they are the dependency of `conda`, which will be upgraded from 2.2.7 to 3.0.4
