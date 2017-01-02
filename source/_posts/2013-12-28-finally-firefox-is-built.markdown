---
layout: post
title: "Finally firefox is built"
date: 2013-12-28 18:37
comments: true
categories: firefox mozilla osx 
---

{% codeblock %}
609:58.75 TestStartupCache
610:02.99 /home/antkong/wd/mozilla-central/js/xpconnect/tests/components/js/xpctest.manifest: WARNING: no preprocessor directives found
610:06.51 /home/antkong/wd/mozilla-central/startupcache/test/TestStartupCacheTelemetry.manifest: WARNING: no preprocessor directives found
610:06.53 /home/antkong/wd/mozilla-central/startupcache/test/TestStartupCacheTelemetry.js: WARNING: no preprocessor directives found
610:06.61 Packaging quitter@mozilla.org.xpi...
610:06.95 816 compiler warnings present.
We know it took a while, but your build finally finished successfully!
To take your build for a test drive, run: /home/antkong/wd/mozilla-central/obj-x86_64-unknown-linux-gnu/dist/bin/firefox
For more information on what to do now, see https://developer.mozilla.org/docs/Developer_Guide/So_You_Just_Built_Firefox

{% endcodeblock %}

It took almost 10 hours to build in a VM instance of Ubuntu desktop 13.10 with 4GB RAM and 1 CPU
