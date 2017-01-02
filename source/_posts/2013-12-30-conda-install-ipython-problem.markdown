---
layout: post
title: "conda install ipython problem"
date: 2013-12-30 08:27
comments: true
categories: osx ipython conda pip 
---

How can I update ``pip``? Need research...

{% codeblock %}
$ conda update ipython
# All packages already at latest version, nothing to do.
# packages in environment at /Users/antkong/anaconda:
#
# Warning: Your version of pip is older than what conda requires for pip
# integration, so pip-installed packages will not be displayed.  Please
# update pip, (conda update pip -p /Users/antkong/anaconda)

conda                     2.2.5                    py27_0  
ipython                   1.1.0                    py27_0  
$ which pip
/Users/antkong/anaconda/bin/pip
$ pip --version
pip 1.4.1 from /Users/antkong/anaconda/lib/python2.7/site-packages (python 2.7)



{% endcodeblock %}
