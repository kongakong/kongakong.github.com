---
layout: post
title: "mach problem"
date: 2013-12-24 08:27
comments: true
categories: firefox mozilla mach ubuntu 
---

{% codeblock %}
$ ./mach  build
 0:00.10 /usr/bin/make -f client.mk -s
 0:00.15 /home/antkong/wd/mozilla-central/client.mk:315: *** Could not find autoconf 2.13.  Stop.
 0:00.15 make: *** [build] Error 2
 0:00.17 0 compiler warnings present.
{% endcodeblock %}

it comes from this check of  mozilla-central/client.mk

{% codeblock %}
# try to find autoconf 2.13 - discard errors from 'which'
# MacOS X 10.4 sends "no autoconf*" errors to stdout, discard those via grep
AUTOCONF ?= $(shell which autoconf-2.13 autoconf2.13 autoconf213 2>/dev/null | grep -v '^no autoconf' | head -1)


{% endcodeblock %}


The autoconf in the Ubuntu desktop system is of version 2.69. It is clearly not compatible.


{% codeblock %}
 0:00.10 /usr/bin/make -f client.mk -s
 0:00.19 TEST-PASS | check-sync-dirs.py | /home/antkong/wd/mozilla-central/js/src/build <= /home/antkong/wd/mozilla-central/build
 0:00.19 Generating /home/antkong/wd/mozilla-central/configure using autoconf
 0:00.26 build/autoconf/acwinpaths.m4:10: error: defn: undefined macro: AC_OUTPUT_FILES
 0:00.26 build/autoconf/acwinpaths.m4:10: the top level
 0:00.26 autom4te: /usr/bin/m4 failed with exit status: 1
 0:00.26 make[1]: *** [/home/antkong/wd/mozilla-central/configure] Error 1
 0:00.26 make: *** [build] Error 2
 0:00.27 0 compiler warnings present.

{% endcodeblock %}

**Solution**: install autoconf-2.13

