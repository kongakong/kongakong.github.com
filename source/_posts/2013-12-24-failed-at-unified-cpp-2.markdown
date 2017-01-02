---
layout: post
title: "Mach problem: Failed at Unified_cpp_2"
date: 2013-12-24 21:24
comments: true
categories: mach firefox mozilla ubuntu 
---

Failed at this point

{% codeblock %}

 8:57.00 {standard input}: Assembler messages:
 8:57.17 {standard input}:104313: Warning: end of file not at end of a line; newline inserted
 8:57.17 {standard input}:104921: Error: unknown pseudo-op: `.lvl'
 8:57.18 {standard input}: Error: open CFI at the end of file; missing .cfi_endproc directive
 8:57.18 c++: internal compiler error: Killed (program cc1plus)
 8:57.18 Please submit a full bug report,
 8:57.19 with preprocessed source if appropriate.
 8:57.19 See <file:///usr/share/doc/gcc-4.8/README.Bugs> for instructions.
 8:57.19 
 8:57.19 In the directory  /home/antkong/wd/mozilla-central/obj-x86_64-unknown-linux-gnu/js/src
 8:57.19 The following command failed to execute properly:
 8:57.19 c++ -o Unified_cpp_2.o -c -I../../dist/system_wrappers_js -include /home/antkong/wd/mozilla-central/js/src/config/gcc_hidden.h -DENABLE_PARALLEL_JS -DENABLE_BINARYDATA -DEXPORT_JS_API -DJS_HAS_CTYPES -DDLL_PREFIX="lib" -DDLL_SUFFIX=".so" -DMOZ_GLUE_IN_PROGRAM -DNO_NSPR_10_SUPPORT -DUSE_ZLIB -I/home/antkong/wd/mozilla-central/js/src -I. -Ictypes/libffi/include -I/home/antkong/wd/mozilla-central/js/src/../../mfbt/double-conversion -I/home/antkong/wd/mozilla-central/js/src/../../intl/icu/source/common -I/home/antkong/wd/mozilla-central/js/src/../../intl/icu/source/i18n -I../../dist/include -I/home/antkong/wd/mozilla-central/obj-x86_64-unknown-linux-gnu/dist/include/nspr -I/home/antkong/wd/mozilla-central/js/src -fPIC -DMOZILLA_CLIENT -include ./js-confdefs.h -MD -MP -MF .deps/Unified_cpp_2.o.pp -Wall -Wpointer-arith -Woverloaded-virtual -Werror=return-type -Wtype-limits -Wempty-body -Werror=conversion-null -Wsign-compare -Wno-invalid-offsetof -Wcast-align -fno-rtti -fno-exceptions -fno-math-errno -std=gnu++0x -pthread -pipe -DNDEBUG -DTRIMMED -g -O3 -freorder-blocks -fomit-frame-pointer -DUSE_SYSTEM_MALLOC=1 -DENABLE_ASSEMBLER=1 -DENABLE_JIT=1 /home/antkong/wd/mozilla-central/obj-x86_64-unknown-linux-gnu/js/src/Unified_cpp_2.cpp


{% endcodeblock %}


Could be due to a change I made earlier related to autoconf in ``client.mk``. In order to do a clean build I will

{% codeblock %}
hg revert --no-backup client.mk
./mach clobber
hg pull -u
{% endcodeblock %}

When I ran ``hg pull`` I got this error message:

    $ hg pull -u
    abort: repository default not found!


Fixed it by creating a .hg/hgrc file:


{% codeblock %}

[paths]
default = http://hg.mozilla.org/mozilla-central/
default-push = ssh://hg.mozilla.org/mozilla-central/

{% endcodeblock %}

Unfortunately it does not fix my problem .

It turns out it has something to do with the PC. I created an instance of VirtualBox to run ubuntu desktop 13.10 for the compilation. I only allocted 512MB RAM for the exercise. The failure above is a problem of too little RAM.

Allocated 4GB of RAM to the VM and the exception is gone. 
