---
layout: post
title: "osx specific error with erlang compilation"
date: 2013-12-04 07:53
comments: true
categories: osx erlang
---

{% codeblock %}
gcc  -Werror=return-type  -m32 -g  -O3 -fomit-frame-pointer -I/Users/antkong/wd/erl/build/otp_src_R16B02/erts/x86_64-apple-darwin13.0.1   -D_XOPEN_SOURCE -DERTS_SMP -DHAVE_CONFIG_H -Wall -Wstrict-prototypes -Wmissing-prototypes -Wdeclaration-after-statement -DUSE_THREADS -D_THREAD_SAFE -D_REENTRANT -DPOSIX_THREADS   -Ix86_64-apple-darwin13.0.1/opt/smp -Ibeam -Isys/unix -Isys/common -Ix86_64-apple-darwin13.0.1 -Izlib  -Ipcre -Ihipe -I../include -I../include/x86_64-apple-darwin13.0.1 -I../include/internal -I../include/internal/x86_64-apple-darwin13.0.1 -c beam/beam_emu.c -o obj/x86_64-apple-darwin13.0.1/opt/smp/beam_emu.o
beam/beam_emu.c:4718:6: warning: 'finite' is deprecated: first deprecated in OS X 10.9 [-Wdeprecated-declarations]
     ERTS_NO_FPE_ERROR(c_p, fb(Arg(2)), goto fbadarith);
     ^
beam/beam_emu.c:4689:29: note: expanded from macro 'ERTS_NO_FPE_ERROR'
#  define ERTS_NO_FPE_ERROR ERTS_FP_ERROR
                            ^
sys/unix/erl_unix_sys.h:310:33: note: expanded from macro 'ERTS_FP_ERROR'
#define ERTS_FP_ERROR(p, f, A)          __ERTS_FP_ERROR(&(p)->fp_exception, f, A)
                                        ^
sys/unix/erl_unix_sys.h:235:51: note: expanded from macro '__ERTS_FP_ERROR'
#  define __ERTS_FP_ERROR(fpexnp, f, Action) if (!finite(f)) { Action; } else {}
                                                  ^
/usr/include/math.h:718:12: note: 'finite' declared here
extern int finite(double) __OSX_AVAILABLE_BUT_DEPRECATED(__MAC_10_0, __MAC_10_9, __IPHONE_NA, __IPHONE_NA);
           ^
beam/beam_emu.c:4727:6: warning: 'finite' is deprecated: first deprecated in OS X 10.9 [-Wdeprecated-declarations]
     ERTS_NO_FPE_ERROR(c_p, fb(Arg(2)), goto fbadarith);
     ^
beam/beam_emu.c:4689:29: note: expanded from macro 'ERTS_NO_FPE_ERROR'
#  define ERTS_NO_FPE_ERROR ERTS_FP_ERROR
                            ^
sys/unix/erl_unix_sys.h:310:33: note: expanded from macro 'ERTS_FP_ERROR'
#define ERTS_FP_ERROR(p, f, A)          __ERTS_FP_ERROR(&(p)->fp_exception, f, A)
                                        ^
sys/unix/erl_unix_sys.h:235:51: note: expanded from macro '__ERTS_FP_ERROR'
#  define __ERTS_FP_ERROR(fpexnp, f, Action) if (!finite(f)) { Action; } else {}
                                                  ^
/usr/include/math.h:718:12: note: 'finite' declared here
extern int finite(double) __OSX_AVAILABLE_BUT_DEPRECATED(__MAC_10_0, __MAC_10_9, __IPHONE_NA, __IPHONE_NA);
           ^
beam/beam_emu.c:4736:6: warning: 'finite' is deprecated: first deprecated in OS X 10.9 [-Wdeprecated-declarations]
     ERTS_NO_FPE_ERROR(c_p, fb(Arg(2)), goto fbadarith);
     ^
beam/beam_emu.c:4689:29: note: expanded from macro 'ERTS_NO_FPE_ERROR'
#  define ERTS_NO_FPE_ERROR ERTS_FP_ERROR
                            ^
sys/unix/erl_unix_sys.h:310:33: note: expanded from macro 'ERTS_FP_ERROR'
#define ERTS_FP_ERROR(p, f, A)          __ERTS_FP_ERROR(&(p)->fp_exception, f, A)
                                        ^
sys/unix/erl_unix_sys.h:235:51: note: expanded from macro '__ERTS_FP_ERROR'
#  define __ERTS_FP_ERROR(fpexnp, f, Action) if (!finite(f)) { Action; } else {}
                                                  ^
/usr/include/math.h:718:12: note: 'finite' declared here
extern int finite(double) __OSX_AVAILABLE_BUT_DEPRECATED(__MAC_10_0, __MAC_10_9, __IPHONE_NA, __IPHONE_NA);
           ^
beam/beam_emu.c:4745:6: warning: 'finite' is deprecated: first deprecated in OS X 10.9 [-Wdeprecated-declarations]
     ERTS_NO_FPE_ERROR(c_p, fb(Arg(2)), goto fbadarith);
     ^
beam/beam_emu.c:4689:29: note: expanded from macro 'ERTS_NO_FPE_ERROR'
#  define ERTS_NO_FPE_ERROR ERTS_FP_ERROR
                            ^
sys/unix/erl_unix_sys.h:310:33: note: expanded from macro 'ERTS_FP_ERROR'
#define ERTS_FP_ERROR(p, f, A)          __ERTS_FP_ERROR(&(p)->fp_exception, f, A)
                                        ^
sys/unix/erl_unix_sys.h:235:51: note: expanded from macro '__ERTS_FP_ERROR'
#  define __ERTS_FP_ERROR(fpexnp, f, Action) if (!finite(f)) { Action; } else {}
                                                  ^
/usr/include/math.h:718:12: note: 'finite' declared here
extern int finite(double) __OSX_AVAILABLE_BUT_DEPRECATED(__MAC_10_0, __MAC_10_9, __IPHONE_NA, __IPHONE_NA);
           ^
beam/beam_emu.c:4754:6: warning: 'finite' is deprecated: first deprecated in OS X 10.9 [-Wdeprecated-declarations]
     ERTS_NO_FPE_ERROR(c_p, fb(Arg(1)), goto fbadarith);
     ^
beam/beam_emu.c:4689:29: note: expanded from macro 'ERTS_NO_FPE_ERROR'
#  define ERTS_NO_FPE_ERROR ERTS_FP_ERROR
                            ^
sys/unix/erl_unix_sys.h:310:33: note: expanded from macro 'ERTS_FP_ERROR'
#define ERTS_FP_ERROR(p, f, A)          __ERTS_FP_ERROR(&(p)->fp_exception, f, A)
                                        ^
sys/unix/erl_unix_sys.h:235:51: note: expanded from macro '__ERTS_FP_ERROR'
#  define __ERTS_FP_ERROR(fpexnp, f, Action) if (!finite(f)) { Action; } else {}
                                                  ^
/usr/include/math.h:718:12: note: 'finite' declared here
extern int finite(double) __OSX_AVAILABLE_BUT_DEPRECATED(__MAC_10_0, __MAC_10_9, __IPHONE_NA, __IPHONE_NA);
         

{% endcodeblock %}

