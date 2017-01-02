---
layout: post
title: "Dependency on MathJax.js"
date: 2014-01-06 19:12
comments: true
categories: ipython osx
---

By default, ipython notebook will use MathJax on a CDN

{% codeblock %}
$ ipython notebook
2014-01-06 19:08:43.857 [NotebookApp] Using existing profile dir: u'/Users/antkong/.ipython/profile_default'
2014-01-06 19:08:43.865 [NotebookApp] Using MathJax from CDN: http://cdn.mathjax.org/mathjax/latest/MathJax.js
2014-01-06 19:08:43.888 [NotebookApp] Serving notebooks from local directory: /Users/antkong/wd/py
2014-01-06 19:08:43.889 [NotebookApp] The IPython Notebook is running at: http://127.0.0.1:8888/
2014-01-06 19:08:43.889 [NotebookApp] Use Control-C to stop this server and shut down all kernels (twice to skip confirmation).
{% endcodeblock %}


To download and install the mathjax.js locally, we can run

    from IPython.external.mathjax import install_mathjax
    install_mathjax()
