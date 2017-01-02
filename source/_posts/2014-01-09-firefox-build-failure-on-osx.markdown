---
layout: post
title: "firefox build failure on osx"
date: 2014-01-09 21:08
comments: true
categories: firefox 
---

{% codeblock %}

 0:12.72 configure:19592:10: fatal error: 'linux/ethtool.h' file not found
 0:12.72 #include <linux/ethtool.h>
 0:12.72          ^
 0:12.72 1 error generated.
 0:12.72 configure: failed program was:
 0:12.72 #line 19591 "configure"
 0:12.72 #include "confdefs.h"
 0:12.72 #include <linux/ethtool.h>
 0:12.73 int main() {
 0:12.73  struct ethtool_cmd cmd; cmd.speed_hi = 0;
 0:12.73 ; return 0; }
 0:12.73 configure:19790: checking __attribute__ ((aligned ())) support
 0:12.73 configure:19807: /usr/bin/clang -c  -std=gnu99 -fno-strict-aliasing -fno-math-errno -pthread -DNO_X11 -Werror -Qunused-arguments  conftest.c 1>&5
 0:12.73 configure: error: yasm is a required build tool for this architecture when webm is enabled. You may either install yasm or --disable-webm (which disables the WebM video format). See https://developer.mozilla.org/en/YASM for more details.
 0:12.73 *** Fix above errors and then restart with               "/Applications/Xcode.app/Contents/Developer/usr/bin/make -f client.mk build"
 0:12.73 make[2]: *** [configure] Error 1
 0:12.73 make[1]: *** [obj-x86_64-apple-darwin13.0.2/Makefile] Error 2
 0:12.73 make: *** [build] Error 2


{% endcodeblock %}


Basically installing yasm fixes this problem. The 'linux/ethtool.h' fatal error seems to be irrevelant. 

Here some build statistic (``mach resource-usage``): 


{% codeblock %}
Wall Time (s)   1230.61
Start Date  2014-01-09T10:24:38.582Z
End Date    2014-01-09T10:45:09.191Z
CPU %   93.85
Write Bytes 4659960320
Read Bytes  1421654016
Write Time  1749179
Read Time   509074


{% endcodeblock %}
