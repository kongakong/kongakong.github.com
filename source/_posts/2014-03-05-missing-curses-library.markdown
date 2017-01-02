---
layout: post
title: "missing curses library"
date: 2014-03-05 07:11
comments: true
categories: 
---

{% codeblock %}
$ sudo apt-get install ncurses-dev
Reading package lists... Done
Building dependency tree       
Reading state information... Done
Note, selecting 'libncurses5-dev' instead of 'ncurses-dev'
The following extra packages will be installed:
  libtinfo-dev
Suggested packages:
  ncurses-doc
The following NEW packages will be installed:
  libncurses5-dev libtinfo-dev
0 upgraded, 2 newly installed, 0 to remove and 107 not upgraded.
Need to get 328 kB of archives.
After this operation, 1,452 kB of additional disk space will be used.
Do you want to continue [Y/n]? 
{% endcodeblock %}

Other dependency

{% codeblock %}

$ sudo apt-get install libssl-dev
{% endcodeblock %}

Do not need them for now

{% codeblock %}

jinterface     : No Java compiler found
odbc           : ODBC library - link check failed

{% endcodeblock %}
