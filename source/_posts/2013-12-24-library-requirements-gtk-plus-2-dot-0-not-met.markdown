---
layout: post
title: "Mach problem: Library requirements (gtk+-2.0 >= 2.10.0 gtk+-unix-print-2.0 glib-2.0 gobject-2.0 gdk-x11-2.0) not met"
date: 2013-12-24 19:38
comments: true
categories: mach firefox mozilla ubuntu 
---

Full error message:

{% codeblock %}
 0:08.11 configure: error: Library requirements (gtk+-2.0 >= 2.10.0 gtk+-unix-print-2.0 glib-2.0 gobject-2.0 gdk-x11-2.0) not met; consider adjusting the PKG_CONFIG_PATH environment variable if your libraries are in a nonstandard prefix so pkg-config can find them.

{% endcodeblock %}

**Solution**:  ``sudo apt-get install libgtk2.0-dev``
