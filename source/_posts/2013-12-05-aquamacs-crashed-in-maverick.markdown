---
layout: post
title: "Aquamacs crashed in maverick"
date: 2013-12-05 19:28
comments: true
categories: osx aquamacs emacs 
---


Keep crasing when I try to use the 'Open File...' dialog


{% codeblock %}
Process:         Aquamacs [44668]
Path:            /Applications/Aquamacs.app/Contents/MacOS/Aquamacs
Identifier:      org.gnu.Aquamacs
Version:         2.5 (2.5.1371164793)
Code Type:       X86 (Native)
Parent Process:  launchd [252]
Responsible:     Aquamacs [44668]
User ID:         501

Date/Time:       2013-12-05 19:26:36.883 +1100
OS Version:      Mac OS X 10.9 (13A2093)
Report Version:  11
Anonymous UUID:  415EC4F0-AF21-6F00-A47F-A9C94728F888

Sleep/Wake UUID: D034A5F8-0000-4401-B23F-7301C3D9B44E

Crashed Thread:  0  Dispatch queue: com.apple.main-thread

Exception Type:  EXC_BREAKPOINT (SIGABRT)
Exception Codes: 0x0000000000000002, 0x0000000000000000

Application Specific Information:
*** Terminating app due to uncaught exception 'NSRangeException', reason: '*** -[__NSArrayM objectAtIndex:]: index 56 beyond bounds [0 .. 55]'
abort() called

Application Specific Backtrace 1:
ÄìM‡‡ùM

Thread 0 Crashed:: Dispatch queue: com.apple.main-thread
0   libsystem_kernel.dylib          0x90ce6286 __kill + 10
1   libsystem_kernel.dylib          0x90ce45ec kill$UNIX2003 + 32
2   org.gnu.Aquamacs                0x000976ca fatal_error_signal + 314
3   libsystem_platform.dylib        0x94e3cdeb _sigtramp + 43
4   ???                             0xffffffff 0 + 4294967295
5   libsystem_c.dylib               0x98388340 abort + 155
6   org.gnu.Aquamacs                0x001793c2 ns_term_shutdown + 98
7   org.gnu.Aquamacs                0x00095a13 shut_down_emacs + 243
8   org.gnu.Aquamacs                0x0009768e fatal_error_signal + 254
9   libsystem_platform.dylib        0x94e3cdeb _sigtramp + 43
10  ???                             0xffffffff 0 + 4294967295
11  com.apple.CoreFoundation        0x9b8e69b0 __raiseError + 960
12  libobjc.A.dylib                 0x949c3091 objc_exception_throw + 162
13  com.apple.AppKit                0x9ae54cd3 -[NSSavePanel runModal] + 623
14  com.apple.AppKit                0x9ae53dbf -[NSSavePanel runModalForDirectory:file:types:] + 298
15  org.gnu.Aquamacs                0x00182dde Fns_read_file_name + 734
16  org.gnu.Aquamacs                0x001109fb Feval + 1211
17  org.gnu.Aquamacs                0x0010eb58 Fsetq + 56
18  org.gnu.Aquamacs                0x001109fb Feval + 1211
19  org.gnu.Aquamacs                0x0010e92d Fif + 125
20  org.gnu.Aquamacs                0x001109fb Feval + 1211
21  org.gnu.Aquamacs                0x00110bb0 Feval + 1648
22  org.gnu.Aquamacs                0x001132ba funcall_lambda + 522
23  org.gnu.Aquamacs                0x001114f8 Ffuncall + 1208
24  org.gnu.Aquamacs                0x00112852 apply1 + 50
25  org.gnu.Aquamacs                0x0010ca98 Fcall_interactively + 1576
26  org.gnu.Aquamacs                0x00111303 Ffuncall + 707
27  org.gnu.Aquamacs                0x001134b1 call3 + 49
28  org.gnu.Aquamacs                0x0009a853 Fcommand_execute + 579
29  org.gnu.Aquamacs                0x000a3ed2 command_loop_1 + 5346
30  org.gnu.Aquamacs                0x001122b4 internal_condition_case + 228
31  org.gnu.Aquamacs                0x000a29d5 command_loop_2 + 69
32  org.gnu.Aquamacs                0x00112383 internal_catch + 179
33  org.gnu.Aquamacs                0x000a4d30 command_loop + 112
34  org.gnu.Aquamacs                0x000a51ad recursive_edit_1 + 157
35  org.gnu.Aquamacs                0x0009a47c Frecursive_edit + 380
36  org.gnu.Aquamacs                0x00097556 main + 5590
37  org.gnu.Aquamacs                0x000031a5 start + 53

Thread 1:
0   libsystem_kernel.dylib          0x90ce7046 __workq_kernreturn + 10
1   libsystem_pthread.dylib         0x9a203dcf _pthread_wqthread + 372
2   libsystem_pthread.dylib         0x9a207cce start_wqthread + 30

Thread 2:: Dispatch queue: com.apple.libdispatch-manager
0   libsystem_kernel.dylib          0x90ce7992 kevent64 + 10
1   libdispatch.dylib               0x90d2c8bd _dispatch_mgr_invoke + 238
2   libdispatch.dylib               0x90d2c556 _dispatch_mgr_thread + 52

Thread 3:
0   libsystem_kernel.dylib          0x90ce7046 __workq_kernreturn + 10
1   libsystem_pthread.dylib         0x9a203dcf _pthread_wqthread + 372
2   libsystem_pthread.dylib         0x9a207cce start_wqthread + 30

Thread 4:
0   libsystem_kernel.dylib          0x90ce7046 __workq_kernreturn + 10
1   libsystem_pthread.dylib         0x9a203dcf _pthread_wqthread + 372
2   libsystem_pthread.dylib         0x9a207cce start_wqthread + 30

Thread 5:
0   libsystem_kernel.dylib          0x90ce7046 __workq_kernreturn + 10
1   libsystem_pthread.dylib         0x9a203dcf _pthread_wqthread + 372
2   libsystem_pthread.dylib         0x9a207cce start_wqthread + 30

Thread 6:
0   libsystem_kernel.dylib          0x90ce7046 __workq_kernreturn + 10
1   libsystem_pthread.dylib         0x9a203dcf _pthread_wqthread + 372
2   libsystem_pthread.dylib         0x9a207cce start_wqthread + 30

Thread 7:
0   libsystem_kernel.dylib          0x90ce1f7a mach_msg_trap + 10
1   libsystem_kernel.dylib          0x90ce116c mach_msg + 68
2   com.apple.CoreFoundation        0x9b7f7f69 __CFRunLoopServiceMachPort + 169
3   com.apple.CoreFoundation        0x9b7f7541 __CFRunLoopRun + 1393
4   com.apple.CoreFoundation        0x9b7f6d5a CFRunLoopRunSpecific + 394
5   com.apple.CoreFoundation        0x9b7f6bbb CFRunLoopRunInMode + 123
6   com.apple.AppKit                0x9a94ff18 _NSEventThread + 283
7   libsystem_pthread.dylib         0x9a2025fb _pthread_body + 144
8   libsystem_pthread.dylib         0x9a202485 _pthread_start + 130
9   libsystem_pthread.dylib         0x9a207cf2 thread_start + 34

Thread 8:
0   libsystem_kernel.dylib          0x90ce7046 __workq_kernreturn + 10
1   libsystem_pthread.dylib         0x9a203dcf _pthread_wqthread + 372
2   libsystem_pthread.dylib         0x9a207cce start_wqthread + 30

Thread 9:: CVDisplayLink
0   libsystem_kernel.dylib          0x90ce67ca __psynch_cvwait + 10
1   libsystem_pthread.dylib         0x9a204d8a _pthread_cond_wait + 837
2   libsystem_pthread.dylib         0x9a205042 pthread_cond_timedwait_relative_np + 47
3   com.apple.CoreVideo             0x9b4e733d CVDisplayLink::waitUntil(unsigned long long) + 287
4   com.apple.CoreVideo             0x9b4e642e CVDisplayLink::runIOThread() + 662
5   com.apple.CoreVideo             0x9b4e6180 startIOThread(void*) + 159
6   libsystem_pthread.dylib         0x9a2025fb _pthread_body + 144
7   libsystem_pthread.dylib         0x9a202485 _pthread_start + 130
8   libsystem_pthread.dylib         0x9a207cf2 thread_start + 34

Thread 10:: com.apple.appkit-heartbeat
0   libsystem_kernel.dylib          0x90ce6b76 __semwait_signal + 10
1   libsystem_c.dylib               0x983a705b nanosleep$UNIX2003 + 219
2   libsystem_c.dylib               0x983a6f06 usleep$UNIX2003 + 60
3   com.apple.AppKit                0x9aa1addc -[NSUIHeartBeat _heartBeatThread:] + 2318
4   com.apple.Foundation            0x9a29af2e -[NSThread main] + 45
5   com.apple.Foundation            0x9a29ae86 __NSThread__main__ + 1426
6   libsystem_pthread.dylib         0x9a2025fb _pthread_body + 144
7   libsystem_pthread.dylib         0x9a202485 _pthread_start + 130
8   libsystem_pthread.dylib         0x9a207cf2 thread_start + 34

Thread 11:
0   libsystem_kernel.dylib          0x90ce7046 __workq_kernreturn + 10
1   libsystem_pthread.dylib         0x9a203dcf _pthread_wqthread + 372
2   libsystem_pthread.dylib         0x9a207cce start_wqthread + 30

Thread 12:
0   libsystem_kernel.dylib          0x90ce7046 __workq_kernreturn + 10
1   libsystem_pthread.dylib         0x9a203dcf _pthread_wqthread + 372
2   libsystem_pthread.dylib         0x9a207cce start_wqthread + 30

Thread 13:
0   libsystem_kernel.dylib          0x90ce7046 __workq_kernreturn + 10
1   libsystem_pthread.dylib         0x9a203dcf _pthread_wqthread + 372
2   libsystem_pthread.dylib         0x9a207cce start_wqthread + 30

Thread 14:
0   libsystem_kernel.dylib          0x90ce7046 __workq_kernreturn + 10
1   libsystem_pthread.dylib         0x9a203dcf _pthread_wqthread + 372
2   libsystem_pthread.dylib         0x9a207cce start_wqthread + 30

Thread 15:
0   libsystem_kernel.dylib          0x90ce7046 __workq_kernreturn + 10
1   libsystem_pthread.dylib         0x9a203dcf _pthread_wqthread + 372
2   libsystem_pthread.dylib         0x9a207cce start_wqthread + 30

Thread 16:: com.apple.CoreAnimation.render-server
0   libsystem_kernel.dylib          0x90ce1f7a mach_msg_trap + 10
1   libsystem_kernel.dylib          0x90ce116c mach_msg + 68
2   com.apple.QuartzCore            0x92be9a7d CA::Render::Server::server_thread(void*) + 232
3   com.apple.QuartzCore            0x92be998c thread_fun + 29
4   libsystem_pthread.dylib         0x9a2025fb _pthread_body + 144
5   libsystem_pthread.dylib         0x9a202485 _pthread_start + 130
6   libsystem_pthread.dylib         0x9a207cf2 thread_start + 34

Thread 17:: com.apple.NSURLConnectionLoader
0   libsystem_kernel.dylib          0x90ce1f7a mach_msg_trap + 10
1   libsystem_kernel.dylib          0x90ce116c mach_msg + 68
2   com.apple.CoreFoundation        0x9b7f7f69 __CFRunLoopServiceMachPort + 169
3   com.apple.CoreFoundation        0x9b7f7541 __CFRunLoopRun + 1393
4   com.apple.CoreFoundation        0x9b7f6d5a CFRunLoopRunSpecific + 394
5   com.apple.CoreFoundation        0x9b7f6bbb CFRunLoopRunInMode + 123
6   com.apple.Foundation            0x9a29b0b5 +[NSURLConnection(Loader) _resourceLoadLoop:] + 381
7   com.apple.Foundation            0x9a29af2e -[NSThread main] + 45
8   com.apple.Foundation            0x9a29ae86 __NSThread__main__ + 1426
9   libsystem_pthread.dylib         0x9a2025fb _pthread_body + 144
10  libsystem_pthread.dylib         0x9a202485 _pthread_start + 130
11  libsystem_pthread.dylib         0x9a207cf2 thread_start + 34

Thread 18:: JavaScriptCore::BlockFree
0   libsystem_kernel.dylib          0x90ce67ca __psynch_cvwait + 10
1   libsystem_pthread.dylib         0x9a204d1d _pthread_cond_wait + 728
2   libsystem_pthread.dylib         0x9a206c25 pthread_cond_timedwait$UNIX2003 + 71
3   com.apple.JavaScriptCore        0x90dddddb WTF::ThreadCondition::timedWait(WTF::Mutex&, double) + 123
4   com.apple.JavaScriptCore        0x90ddd932 JSC::BlockAllocator::blockFreeingThreadMain() + 130
5   com.apple.JavaScriptCore        0x90dd4d7c WTF::threadEntryPoint(void*) + 76
6   com.apple.JavaScriptCore        0x90dd4d10 WTF::wtfThreadEntryPoint(void*) + 16
7   libsystem_pthread.dylib         0x9a2025fb _pthread_body + 144
8   libsystem_pthread.dylib         0x9a202485 _pthread_start + 130
9   libsystem_pthread.dylib         0x9a207cf2 thread_start + 34

Thread 19:: JavaScriptCore::Marking
0   libsystem_kernel.dylib          0x90ce67ca __psynch_cvwait + 10
1   libsystem_pthread.dylib         0x9a204d1d _pthread_cond_wait + 728
2   libsystem_pthread.dylib         0x9a206bd9 pthread_cond_wait$UNIX2003 + 71
3   com.apple.JavaScriptCore        0x90dde3cb JSC::GCThread::waitForNextPhase() + 123
4   com.apple.JavaScriptCore        0x90dde258 JSC::GCThread::gcThreadMain() + 88
5   com.apple.JavaScriptCore        0x90dd4d7c WTF::threadEntryPoint(void*) + 76
6   com.apple.JavaScriptCore        0x90dd4d10 WTF::wtfThreadEntryPoint(void*) + 16
7   libsystem_pthread.dylib         0x9a2025fb _pthread_body + 144
8   libsystem_pthread.dylib         0x9a202485 _pthread_start + 130
9   libsystem_pthread.dylib         0x9a207cf2 thread_start + 34

Thread 20:: JavaScriptCore::Marking
0   libsystem_kernel.dylib          0x90ce67ca __psynch_cvwait + 10
1   libsystem_pthread.dylib         0x9a204d1d _pthread_cond_wait + 728
2   libsystem_pthread.dylib         0x9a206bd9 pthread_cond_wait$UNIX2003 + 71
3   com.apple.JavaScriptCore        0x90dde3cb JSC::GCThread::waitForNextPhase() + 123
4   com.apple.JavaScriptCore        0x90dde258 JSC::GCThread::gcThreadMain() + 88
5   com.apple.JavaScriptCore        0x90dd4d7c WTF::threadEntryPoint(void*) + 76
6   com.apple.JavaScriptCore        0x90dd4d10 WTF::wtfThreadEntryPoint(void*) + 16
7   libsystem_pthread.dylib         0x9a2025fb _pthread_body + 144
8   libsystem_pthread.dylib         0x9a202485 _pthread_start + 130
9   libsystem_pthread.dylib         0x9a207cf2 thread_start + 34

Thread 21:: JavaScriptCore::Marking
0   libsystem_kernel.dylib          0x90ce67ca __psynch_cvwait + 10
1   libsystem_pthread.dylib         0x9a204d1d _pthread_cond_wait + 728
2   libsystem_pthread.dylib         0x9a206bd9 pthread_cond_wait$UNIX2003 + 71
3   com.apple.JavaScriptCore        0x90dde3cb JSC::GCThread::waitForNextPhase() + 123
4   com.apple.JavaScriptCore        0x90dde258 JSC::GCThread::gcThreadMain() + 88
5   com.apple.JavaScriptCore        0x90dd4d7c WTF::threadEntryPoint(void*) + 76
6   com.apple.JavaScriptCore        0x90dd4d10 WTF::wtfThreadEntryPoint(void*) + 16
7   libsystem_pthread.dylib         0x9a2025fb _pthread_body + 144
8   libsystem_pthread.dylib         0x9a202485 _pthread_start + 130
9   libsystem_pthread.dylib         0x9a207cf2 thread_start + 34

Thread 22:
0   libsystem_kernel.dylib          0x90ce67ca __psynch_cvwait + 10
1   libsystem_pthread.dylib         0x9a204d1d _pthread_cond_wait + 728
2   libsystem_pthread.dylib         0x9a206bd9 pthread_cond_wait$UNIX2003 + 71
3   com.apple.Foundation            0x9a29801a -[NSCondition wait] + 274
4   com.apple.Foundation            0x9a2615f7 -[NSObject(NSThreadPerformAdditions) performSelector:onThread:withObject:waitUntilDone:modes:] + 741
5   com.apple.Foundation            0x9a2d83b2 -[NSObject(NSThreadPerformAdditions) performSelectorOnMainThread:withObject:waitUntilDone:modes:] + 91
6   com.apple.imageKit              0x97533872 -[_IKIRLMainProxy forwardInvocation:] + 115
7   com.apple.CoreFoundation        0x9b8365d9 ___forwarding___ + 457
8   com.apple.CoreFoundation        0x9b8363ee _CF_forwarding_prep_0 + 14
9   com.apple.imageKit              0x97528a5e -[IKImageWrapper integrateReferenceInstance:] + 234
10  com.apple.imageKit              0x9752a019 -[IKImageWrapper size] + 146
11  com.apple.imageKit              0x97635da5 +[IKDatasourceProxy _thumbnailWithRepresentation:type:uti:quickLookOptions:proxySource:size:antialiased:quality:] + 316
12  com.apple.imageKit              0x97636736 -[IKDatasourceProxy thumbnailWithSize:antialiased:quality:] + 115
13  com.apple.imageKit              0x9752909f -[IKImageWrapper _thumbnailWithSize:antialiased:quality:] + 571
14  com.apple.imageKit              0x9752970e -[IKImageWrapper thumbnailWithSize:antialiased:quality:] + 111
15  com.apple.imageKit              0x9762f647 -[IKThumbnailBuilder computeThumbnail] + 281
16  com.apple.imageKit              0x9763bca9 -[IKImageFlowView(tasks) startPrefetchThumbnails] + 537
17  libobjc.A.dylib                 0x949cf262 -[NSObject performSelector:] + 62
18  com.apple.imageKit              0x975fdfa8 -[IKTaskManager taskLoop] + 2279
19  com.apple.Foundation            0x9a29af2e -[NSThread main] + 45
20  com.apple.Foundation            0x9a29ae86 __NSThread__main__ + 1426
21  libsystem_pthread.dylib         0x9a2025fb _pthread_body + 144
22  libsystem_pthread.dylib         0x9a202485 _pthread_start + 130
23  libsystem_pthread.dylib         0x9a207cf2 thread_start + 34

Thread 0 crashed with X86 Thread State (32-bit):
  eax: 0x00000000  ebx: 0x00000006  ecx: 0xbfffe0cc  edx: 0x90ce6286
  edi: 0x0045b2b0  esi: 0x00000006  ebp: 0xbfffe0e8  esp: 0xbfffe0cc
   ss: 0x00000023  efl: 0x00000282  eip: 0x90ce6286   cs: 0x0000000b
   ds: 0x00000023   es: 0x00000023   fs: 0x00000000   gs: 0x0000000f
  cr2: 0x04c6e7fc
  
Logical CPU:     0
Error Code:      0x000c0025
Trap Number:     132


Binary Images:
    0x1000 -   0x1bafed +org.gnu.Aquamacs (2.5 - 2.5.1371164793) <E66BCB5B-5562-3A91-8639-7EF6CE593F1C> /Applications/Aquamacs.app/Contents/MacOS/Aquamacs
 0x129d000 -  0x12c2ff9  com.apple.framework.familycontrols (4.1 - 410) <774FFF51-2816-3DD5-BCF5-E75422792C55> /System/Library/PrivateFrameworks/FamilyControls.framework/Versions/A/FamilyControls
 0x12d7000 -  0x12e2fff  com.apple.CommerceCore (1.0 - 42) <21ED6238-5508-3CF0-B106-877E27B556C0> /System/Library/PrivateFrameworks/CommerceKit.framework/Versions/A/Frameworks/CommerceCore.framework/Versions/A/CommerceCore
 0x12ec000 -  0x12f0ffd  libFontRegistryUI.dylib (126) <1FCB2A74-4F56-37AD-BB56-86C51927DAE7> /System/Library/Frameworks/ApplicationServices.framework/Frameworks/ATS.framework/Resources/libFontRegistryUI.dylib
 0x1ae3000 -  0x1ae4ff8  ATSHI.dylib (363) <B020774F-3749-3BE6-BAAB-570BAB9C024C> /System/Library/Frameworks/ApplicationServices.framework/Versions/A/Frameworks/ATS.framework/Versions/A/Resources/ATSHI.dylib
 0x1f72000 -  0x1f76fff  com.apple.qldisplay.Generic (5.0 - 622.3) <AC3004D7-8E3A-3103-89AB-4ABE306E6505> /System/Library/Frameworks/Quartz.framework/Versions/A/Frameworks/QuickLookUI.framework/Versions/A/PlugIns/Generic.qldisplay/Contents/MacOS/Generic
 0x294f000 -  0x2950ff7 +cl_kernels (???) <83ED274E-4DDF-4350-B7F9-402E1D20649A> cl_kernels
 0x2955000 -  0x2955ffd +cl_kernels (???) <B222B8DA-4A10-489D-9D7D-75B413D2E24A> cl_kernels
 0x2975000 -  0x2976ff3 +cl_kernels (???) <3D032427-0D47-4AB6-979E-0C570FF11EE7> cl_kernels
 0x2978000 -  0x2a63ff7  unorm8_bgra.dylib (2.3.58) <0A1AE061-571A-3F91-939A-9FFA913BB775> /System/Library/Frameworks/OpenCL.framework/Versions/A/Libraries/ImageFormats/unorm8_bgra.dylib
 0x2a9f000 -  0x2aa0ffd +cl_kernels (???) <15FFB0DB-758F-4267-AC5E-74B1D18B256D> cl_kernels
 0x2aa2000 -  0x2b8dff7  unorm8_argb.dylib (2.3.58) <C70D92E7-ADC5-38C0-AEBB-9290038C8CCF> /System/Library/Frameworks/OpenCL.framework/Versions/A/Libraries/ImageFormats/unorm8_argb.dylib
 0x3fe1000 -  0x3fe1ff3 +cl_kernels (???) <503907FB-1E70-412E-A5BE-5E961EF2A71E> cl_kernels
 0x3ff4000 -  0x3ff5ff7 +cl_kernels (???) <FDA27C9A-CDFA-4545-B846-E9B7A6DF5535> cl_kernels
 0x5bed000 -  0x5beeff3 +cl_kernels (???) <321AA8F4-72D8-46F9-AF99-378E30C0543A> cl_kernels
 0xb908000 -  0xb909fff +cl_kernels (???) <3FACC9D9-A822-422F-B9B3-4AB7501118CB> cl_kernels
 0xd5f8000 -  0xd5f8ff6 +cl_kernels (???) <E04509EE-7236-41E5-84F0-A2BCCBF5E614> cl_kernels
 0xf813000 -  0xf814ff1 +cl_kernels (???) <9B8A561D-D743-40CF-81D5-9149DD5B6FC8> cl_kernels
 0xf87b000 -  0xf87bff5 +cl_kernels (???) <473E7787-6760-4A14-8D3B-D68C733599A4> cl_kernels
0x1073d000 - 0x10758ff5  com.apple.security.csparser (3.0 - 55471) <163EF76C-D82D-3CB6-9EF1-4F579644B893> /System/Library/Frameworks/Security.framework/PlugIns/csparser.bundle/Contents/MacOS/csparser
0x12ec6000 - 0x12ed0ffc  com.apple.qldisplay.Web2 (5.0 - 622.3) <39873DAC-122B-30A3-918D-BD98CA04E9E9> /System/Library/Frameworks/Quartz.framework/Versions/A/Frameworks/QuickLookUI.framework/Versions/A/PlugIns/Web2.qldisplay/Contents/MacOS/Web2
0x13026000 - 0x1302cff7  com.apple.qldisplay.Text (5.0 - 622.3) <BC3A076B-2E09-3C95-A937-F64C061CBE0E> /System/Library/Frameworks/Quartz.framework/Versions/A/Frameworks/QuickLookUI.framework/Versions/A/PlugIns/Text.qldisplay/Contents/MacOS/Text
0x137e3000 - 0x138c9ff7  unorm8_rgba.dylib (2.3.58) <50987C6E-FFEF-3FAE-92DB-593340B4D0B5> /System/Library/Frameworks/OpenCL.framework/Versions/A/Libraries/ImageFormats/unorm8_rgba.dylib
0x13902000 - 0x13903ff7 +cl_kernels (???) <36B39380-682B-497A-A5F0-2F7C7151D586> cl_kernels
0x13907000 - 0x13907ffd +cl_kernels (???) <7FA0753D-F7E4-4D6B-A0C6-A05FCF81E1BB> cl_kernels
0x13910000 - 0x13911ff5 +cl_kernels (???) <F0FFF4AB-88E0-45E3-8668-79514AA002DA> cl_kernels
0x13aea000 - 0x13b06fff  com.apple.qldisplay.Web (5.0 - 622.3) <81FCA73F-616B-30E2-98D7-D0DAFE312601> /System/Library/Frameworks/Quartz.framework/Versions/A/Frameworks/QuickLookUI.framework/Versions/A/PlugIns/Web.qldisplay/Contents/MacOS/Web
0x13b15000 - 0x13b3ffff  com.apple.datadetectors (5.0 - 246.0) <2337AA57-83ED-3F1F-A3B8-8311ACC2C738> /System/Library/PrivateFrameworks/DataDetectors.framework/Versions/A/DataDetectors
0x18e82000 - 0x19070ffc  com.apple.WebKit2 (9537 - 9537.71) <A18E62F9-A3F5-3B67-8390-CC2178CB6CBE> /System/Library/PrivateFrameworks/WebKit2.framework/Versions/A/WebKit2
0x40000000 - 0x4045eff7  com.apple.driver.AppleIntelHD5000GraphicsGLDriver (8.20.22 - 8.2.0) <261A6AEE-BF41-377E-B22A-792F17E18D2E> /System/Library/Extensions/AppleIntelHD5000GraphicsGLDriver.bundle/Contents/MacOS/AppleIntelHD5000GraphicsGLDriver
0x8feac000 - 0x8fede417  dyld (239.3) <0C03127A-C24D-38D8-AE4C-7F580E26608E> /usr/lib/dyld
0x90016000 - 0x9001eff7  libCGCMS.A.dylib (599.6) <E60173C6-4035-3D6A-85B9-2E8CC2CA9CB1> /System/Library/Frameworks/CoreGraphics.framework/Versions/A/Resources/libCGCMS.A.dylib
0x9001f000 - 0x904c6fe7  com.apple.CoreAUC (6.22.08 - 6.22.08) <FC04B3BF-C38B-3A47-875E-9286706CE8A4> /System/Library/PrivateFrameworks/CoreAUC.framework/Versions/A/CoreAUC
0x904c7000 - 0x90505ff7  com.apple.NavigationServices (3.8 - 215) <569047EC-C616-3DFD-9D7C-FD183D7791CC> /System/Library/Frameworks/Carbon.framework/Versions/A/Frameworks/NavigationServices.framework/Versions/A/NavigationServices
0x90506000 - 0x90532ff7  GLRendererFloat (9.3.1) <7BD36ED4-1772-3F07-A71C-295A3D24442E> /System/Library/Frameworks/OpenGL.framework/Versions/A/Resources/GLRendererFloat.bundle/GLRendererFloat
0x90533000 - 0x908a8ff9  com.apple.HIToolbox (2.1 - 695) <53A2DBDB-0C57-3182-92C2-EDC9F52AA549> /System/Library/Frameworks/Carbon.framework/Versions/A/Frameworks/HIToolbox.framework/Versions/A/HIToolbox
0x908a9000 - 0x9099dfff  libFontParser.dylib (111) <41FCADFD-209C-3C34-AF8E-4AEAAB5F26DF> /System/Library/Frameworks/ApplicationServices.framework/Versions/A/Frameworks/ATS.framework/Versions/A/Resources/libFontParser.dylib
0x909b2000 - 0x90a4aff7  com.apple.Metadata (10.7.0 - 800.12) <0AE4CD6B-FDFC-31ED-9F2C-FE870155CAF9> /System/Library/Frameworks/CoreServices.framework/Versions/A/Frameworks/Metadata.framework/Versions/A/Metadata
0x90a4b000 - 0x90a7afff  com.apple.framework.SystemAdministration (1.0 - 1.0) <881977E8-0319-35EF-9B04-36F6E1B33619> /System/Library/PrivateFrameworks/SystemAdministration.framework/Versions/A/SystemAdministration
0x90a7b000 - 0x90a84fff  libsystem_notify.dylib (121) <D0A7853F-E5C8-38A9-963E-64237C6AEAFB> /usr/lib/system/libsystem_notify.dylib
0x90a85000 - 0x90adeffa  libTIFF.dylib (1038) <691DAAFD-D72B-3BE9-AE5C-84AF86BE66CD> /System/Library/Frameworks/ImageIO.framework/Versions/A/Resources/libTIFF.dylib
0x90adf000 - 0x90b15fff  com.apple.IconServices (25 - 25.17) <DDA3F7BD-1EFD-3435-B39C-A29389AFCA5F> /System/Library/PrivateFrameworks/IconServices.framework/Versions/A/IconServices
0x90b16000 - 0x90b28fff  libbsm.0.dylib (33) <1BE92DB5-0D2F-3BB5-BCC6-8A71EF2A3450> /usr/lib/libbsm.0.dylib
0x90b29000 - 0x90b42fff  libAVFAudio.dylib (32.2) <D0786BF6-7997-399C-AE17-3CBF091056C4> /System/Library/Frameworks/AVFoundation.framework/Versions/A/Resources/libAVFAudio.dylib
0x90b43000 - 0x90b46ff7  com.apple.help (1.3.3 - 46) <800CDB99-DE62-3218-879F-45A3BA27DF13> /System/Library/Frameworks/Carbon.framework/Versions/A/Frameworks/Help.framework/Versions/A/Help
0x90b47000 - 0x90b77ff3  libtidy.A.dylib (15.12) <3DBE95FE-8FA7-3584-9202-E37B54B3B064> /usr/lib/libtidy.A.dylib
0x90b78000 - 0x90b7aff2  com.apple.EFILogin (2.0 - 2) <F057A7E4-2D57-3AD7-AF3D-FB587652D2A3> /System/Library/PrivateFrameworks/EFILogin.framework/Versions/A/EFILogin
0x90b7b000 - 0x90bd9ffd  com.apple.AE (665.5 - 665.5) <C4E8FA31-EF42-3131-A5B1-E191660C51F6> /System/Library/Frameworks/CoreServices.framework/Versions/A/Frameworks/AE.framework/Versions/A/AE
0x90bda000 - 0x90be4ff3  com.apple.DisplayServicesFW (2.8 - 360.8.14) <A0D5A12D-FE54-39E4-AA34-D4D9DFE69780> /System/Library/PrivateFrameworks/DisplayServices.framework/Versions/A/DisplayServices
0x90be5000 - 0x90be8fff  libdyld.dylib (239.3) <03D62394-909C-34EC-8819-2646C60727FB> /usr/lib/system/libdyld.dylib
0x90be9000 - 0x90bfbfff  libsystem_asl.dylib (217.1.4) <EE97E801-21D9-32F9-B33D-F6AA4D4E2739> /usr/lib/system/libsystem_asl.dylib
0x90bfc000 - 0x90c67ff9  com.apple.Heimdal (4.0 - 2.0) <01FAA09E-4E82-3177-B567-ACF9609FC93A> /System/Library/PrivateFrameworks/Heimdal.framework/Versions/A/Heimdal
0x90c68000 - 0x90cceff4  com.apple.ISSupport (1.9.9 - 57) <46757649-CBA7-3832-AFFC-BDFCD7D36E5A> /System/Library/PrivateFrameworks/ISSupport.framework/Versions/A/ISSupport
0x90ccf000 - 0x90cecff4  libsystem_kernel.dylib (2422.50.20) <6633A9B6-4A75-3C99-AEA1-7A26DF8EC650> /usr/lib/system/libsystem_kernel.dylib
0x90ced000 - 0x90d02ff3  com.apple.AppContainer (3.0 - 1) <A6B8C826-A8A8-32DB-B16E-585AF0D84546> /System/Library/PrivateFrameworks/AppContainer.framework/Versions/A/AppContainer
0x90d0b000 - 0x90d14fff  com.apple.DiskArbitration (2.6 - 2.6) <811EDFD3-D6C7-328D-9082-DBEAE1F97355> /System/Library/Frameworks/DiskArbitration.framework/Versions/A/DiskArbitration
0x90d15000 - 0x90d1cff7  com.apple.XPCService (2.0 - 1) <7C51F9C6-D055-3A51-8368-6C86F6D91E54> /System/Library/PrivateFrameworks/XPCService.framework/Versions/A/XPCService
0x90d1d000 - 0x90d28ffb  libcommonCrypto.dylib (60049) <C5D2D9B6-56D9-37F4-A286-739CFBE54DCB> /usr/lib/system/libcommonCrypto.dylib
0x90d29000 - 0x90d41ffd  libdispatch.dylib (339.1.9) <C54B94A7-63C4-3B2C-8C65-D6E034AB4C64> /usr/lib/system/libdispatch.dylib
0x90d42000 - 0x90dcbfff  com.apple.CoreSymbolication (3.0 - 141) <178DDF5C-B6DA-39BD-84F5-FD3FA7E93BF8> /System/Library/PrivateFrameworks/CoreSymbolication.framework/Versions/A/CoreSymbolication
0x90dcc000 - 0x910f2ffb  com.apple.JavaScriptCore (9537 - 9537.65) <402E2B2F-AA3F-33E6-BD7D-46B1E9314311> /System/Library/Frameworks/JavaScriptCore.framework/Versions/A/JavaScriptCore
0x910f3000 - 0x91123fff  libncurses.5.4.dylib (42) <A3C5B33A-A2A6-3812-A611-40945E50B917> /usr/lib/libncurses.5.4.dylib
0x91124000 - 0x9112cfff  libcopyfile.dylib (103) <F66EDAED-ECC4-3771-8D32-51ECAF6DF572> /usr/lib/system/libcopyfile.dylib
0x9112d000 - 0x9115bff3  com.apple.DebugSymbols (106 - 106) <C10B9117-55E3-3C2D-A7EC-FC2247992BA8> /System/Library/PrivateFrameworks/DebugSymbols.framework/Versions/A/DebugSymbols
0x9115c000 - 0x9124cffb  libiconv.2.dylib (41) <848FEBA7-2E3E-3ECB-BD59-007F32468787> /usr/lib/libiconv.2.dylib
0x9124d000 - 0x912a2ff7  com.apple.audio.CoreAudio (4.2.0 - 4.2.0) <F2C95427-FCF8-380E-86A3-9B253B50A515> /System/Library/Frameworks/CoreAudio.framework/Versions/A/CoreAudio
0x912a3000 - 0x912a6ff3  com.apple.AppleSystemInfo (3.0 - 3.0) <2F8D90AF-81A5-3FC8-B80F-0A1105D2222B> /System/Library/PrivateFrameworks/AppleSystemInfo.framework/Versions/A/AppleSystemInfo
0x912a7000 - 0x912dcffd  libssl.0.9.8.dylib (50) <F3BEA2DF-DB84-37F0-B4C7-97C0A4DF19C9> /usr/lib/libssl.0.9.8.dylib
0x912dd000 - 0x912dffff  libsystem_configuration.dylib (596.12) <774A4CF6-56D3-398B-A288-5C2A0DABF3F5> /usr/lib/system/libsystem_configuration.dylib
0x912f1000 - 0x91388ff7  com.apple.ink.framework (10.9 - 207) <40BA617D-ECFE-395B-BDBD-B4F83EE2278A> /System/Library/Frameworks/Carbon.framework/Versions/A/Frameworks/Ink.framework/Versions/A/Ink
0x91389000 - 0x91389fff  com.apple.Accelerate (1.9 - Accelerate 1.9) <C85070A7-D942-3CFA-981F-5864480788C8> /System/Library/Frameworks/Accelerate.framework/Versions/A/Accelerate
0x9138a000 - 0x913bbffd  com.apple.GSS (4.0 - 2.0) <5F2D8FAC-9FD1-3205-855E-5ED51854F398> /System/Library/Frameworks/GSS.framework/Versions/A/GSS
0x913bc000 - 0x913e4ff7  libRIP.A.dylib (599.6) <A3747B5B-79F4-345D-B4D3-6DE150F6D4DF> /System/Library/Frameworks/CoreGraphics.framework/Versions/A/Resources/libRIP.A.dylib
0x913e5000 - 0x91458fff  com.apple.SearchKit (1.4.0 - 1.4.0) <3F2587A9-98A2-36E8-AF7E-EB571FE90259> /System/Library/Frameworks/CoreServices.framework/Versions/A/Frameworks/SearchKit.framework/Versions/A/SearchKit
0x91459000 - 0x91462fff  com.apple.audio.SoundManager (4.1 - 4.1) <2D101E29-2625-37AC-8D3F-FCFBC646DDC5> /System/Library/Frameworks/Carbon.framework/Versions/A/Frameworks/CarbonSound.framework/Versions/A/CarbonSound
0x91463000 - 0x91468ff6  libcompiler_rt.dylib (35) <B97D25BB-B87B-3319-8915-C1C274661E87> /usr/lib/system/libcompiler_rt.dylib
0x91469000 - 0x91494ff5  com.apple.ChunkingLibrary (2.0 - 155.1) <E8A80531-6707-38B5-A145-E944EE8A1D12> /System/Library/PrivateFrameworks/ChunkingLibrary.framework/Versions/A/ChunkingLibrary
0x9165d000 - 0x9195eff7  com.apple.CoreServices.CarbonCore (1077.13 - 1077.13) <C514A490-8689-3665-AD82-863B5FF8D6AE> /System/Library/Frameworks/CoreServices.framework/Versions/A/Frameworks/CarbonCore.framework/Versions/A/CarbonCore
0x92120000 - 0x92120fff  libkeymgr.dylib (28) <52854EAA-2BAB-37A1-9C6A-762C91E0E0CE> /usr/lib/system/libkeymgr.dylib
0x92121000 - 0x9212bff7  com.apple.DirectoryService.Framework (10.9 - 173.1.1) <731935BF-117F-36E0-80D7-D82652A6F690> /System/Library/Frameworks/DirectoryService.framework/Versions/A/DirectoryService
0x9212f000 - 0x92132ffb  libutil.dylib (34) <B496031E-E763-3DEB-84D2-85C0F3DF2012> /usr/lib/libutil.dylib
0x92133000 - 0x92134ffa  libsystem_sandbox.dylib (278.10) <C51A5123-800E-399D-A80F-7A4DA7F0E4B2> /usr/lib/system/libsystem_sandbox.dylib
0x92135000 - 0x92220ff4  com.apple.DiskImagesFramework (10.9 - 371.1) <FC13BD5A-0FB7-35D5-A8DF-0510CFA996FE> /System/Library/PrivateFrameworks/DiskImages.framework/Versions/A/DiskImages
0x92223000 - 0x92223fff  com.apple.Accelerate.vecLib (3.9 - vecLib 3.9) <DDAC0B59-F886-3AB1-98E8-C71FFF161CD4> /System/Library/Frameworks/Accelerate.framework/Versions/A/Frameworks/vecLib.framework/Versions/A/vecLib
0x92224000 - 0x92225fff  liblangid.dylib (117) <F18F76C6-7E4B-34AD-AE81-C1C031BF2F7D> /usr/lib/liblangid.dylib
0x92226000 - 0x92242ff9  com.apple.Ubiquity (1.3 - 289) <64DEF1B4-F874-3DF2-9D58-ABBF0A15C5BB> /System/Library/PrivateFrameworks/Ubiquity.framework/Versions/A/Ubiquity
0x92301000 - 0x9264dffb  com.apple.MediaToolbox (1.0 - 1273.29) <C7A0AD3C-3C66-331E-9BF7-CBED02A643A0> /System/Library/Frameworks/MediaToolbox.framework/Versions/A/MediaToolbox
0x9264e000 - 0x92785ff3  com.apple.desktopservices (1.8 - 1.8) <BAD2459E-A5FE-3015-ABCD-E13B64A30E27> /System/Library/PrivateFrameworks/DesktopServicesPriv.framework/Versions/A/DesktopServicesPriv
0x92786000 - 0x9279ffff  com.apple.Kerberos (3.0 - 1) <5518E394-6B33-3693-A7E8-C2A378CD98FC> /System/Library/Frameworks/Kerberos.framework/Versions/A/Kerberos
0x92807000 - 0x92808fff  libDiagnosticMessagesClient.dylib (100) <B936B1D4-90BB-395D-8EA9-E1237608E7D0> /usr/lib/libDiagnosticMessagesClient.dylib
0x92809000 - 0x92a85ff7  com.apple.QuickTime (7.7.3 - 2826) <25F10D75-66D3-34F0-8C50-2219A24680F2> /System/Library/Frameworks/QuickTime.framework/Versions/A/QuickTime
0x92a86000 - 0x92aaefff  libsystem_info.dylib (449.1.3) <A488838A-39CF-3F6B-B1A1-9B0056E2310A> /usr/lib/system/libsystem_info.dylib
0x92aaf000 - 0x92af7fff  com.apple.PerformanceAnalysis (1.47 - 47) <48BE84A9-3753-3CDA-A092-2F8CA36C731C> /System/Library/PrivateFrameworks/PerformanceAnalysis.framework/Versions/A/PerformanceAnalysis
0x92af8000 - 0x92af8fff  com.apple.quartzframework (1.5 - 1.5) <1B6BEB80-5370-3495-B504-EC72BC4FE842> /System/Library/Frameworks/Quartz.framework/Versions/A/Quartz
0x92af9000 - 0x92bc0ff7  com.apple.DiscRecording (8.0 - 8000.4.6) <149C7C83-4260-39E9-9258-3B43CB3962EA> /System/Library/Frameworks/DiscRecording.framework/Versions/A/DiscRecording
0x92bc1000 - 0x92d6dff1  com.apple.QuartzCore (1.8 - 332.0) <91B67DD8-C7A4-3F65-98DF-270572AA7745> /System/Library/Frameworks/QuartzCore.framework/Versions/A/QuartzCore
0x92d71000 - 0x92d72ff7  com.apple.diagnosticlogcollection (10.0 - 1000) <D13AE389-84D5-3615-BA0A-6290C7B18E05> /System/Library/PrivateFrameworks/DiagnosticLogCollection.framework/Versions/A/DiagnosticLogCollection
0x92d73000 - 0x92dd1fff  com.apple.ViewBridge (1.0 - 46) <62450F2D-C27A-3D11-BA41-AF8C6B18BEDD> /System/Library/PrivateFrameworks/ViewBridge.framework/Versions/A/ViewBridge
0x92dd2000 - 0x93055ff7  com.apple.RawCamera.bundle (5.01 - 718) <6CBC1883-D81D-3053-94CA-2AB4A460EE38> /System/Library/CoreServices/RawCamera.bundle/Contents/MacOS/RawCamera
0x93056000 - 0x93070ff7  com.apple.GenerationalStorage (2.0 - 160.2) <AC54567A-B6AA-31BF-BC09-4C8A3D20AFC8> /System/Library/PrivateFrameworks/GenerationalStorage.framework/Versions/A/GenerationalStorage
0x93071000 - 0x93075fff  com.apple.IOAccelerator (98.9 - 98.9) <15D551BA-BBCF-388E-B1DE-6B1BAA2CDF8D> /System/Library/PrivateFrameworks/IOAccelerator.framework/Versions/A/IOAccelerator
0x93076000 - 0x93080ff2  com.apple.AppSandbox (3.0 - 1) <6B02A574-FB78-3C35-88AB-CFD6C4C8526C> /System/Library/PrivateFrameworks/AppSandbox.framework/Versions/A/AppSandbox
0x93081000 - 0x934b5ff7  com.apple.vision.FaceCore (3.0.0 - 3.0.0) <0CDD2352-FD7F-37D2-9A1F-5C29CB25551E> /System/Library/PrivateFrameworks/FaceCore.framework/Versions/A/FaceCore
0x934b6000 - 0x934d6fff  com.apple.facetimeservices (10.0 - 1000) <E66D1139-643C-3871-8422-25ED000A9BBB> /System/Library/PrivateFrameworks/FTServices.framework/Versions/A/FTServices
0x934d7000 - 0x934f3fff  libCRFSuite.dylib (34) <FFF76EBA-DF35-3A5F-857F-3F4B1C9F4C77> /usr/lib/libCRFSuite.dylib
0x934f4000 - 0x934fbff1  com.apple.phonenumbers (1.1.1 - 105) <580967AC-247C-32CB-A0AE-93F1ABDF7AB8> /System/Library/PrivateFrameworks/PhoneNumbers.framework/Versions/A/PhoneNumbers
0x934fc000 - 0x93880ff7  com.apple.FinderKit (1.2 - 1.2) <97A5857E-B4D8-3473-8A54-147F36E63EFA> /System/Library/PrivateFrameworks/FinderKit.framework/Versions/A/FinderKit
0x93881000 - 0x938bdff4  com.apple.RemoteViewServices (2.0 - 94) <E1781627-FF85-3FC4-925A-6C27C5FBB400> /System/Library/PrivateFrameworks/RemoteViewServices.framework/Versions/A/RemoteViewServices
0x938be000 - 0x9398bff7  com.apple.backup.framework (1.5 - 1.5) <73D61B3A-8A17-3D45-8754-D18368CC7484> /System/Library/PrivateFrameworks/Backup.framework/Versions/A/Backup
0x9398c000 - 0x93992ff7  com.apple.AddressBook.ContactsFoundation (8.0 - 1365) <3CABD941-9D36-3FB7-BD93-11A7CDC3FB4D> /System/Library/PrivateFrameworks/ContactsFoundation.framework/Versions/A/ContactsFoundation
0x93993000 - 0x9399aff2  com.apple.NetFS (6.0 - 4.0) <F875E200-1EBD-3461-875C-B57B76CF9473> /System/Library/Frameworks/NetFS.framework/Versions/A/NetFS
0x9399b000 - 0x9399effa  libCGXType.A.dylib (599.6) <DFFBEC14-056B-3DCF-82D1-D3CCF0C62DEE> /System/Library/Frameworks/CoreGraphics.framework/Versions/A/Resources/libCGXType.A.dylib
0x9399f000 - 0x939a0fff  libremovefile.dylib (33) <56E5688C-9C10-3E95-9B0E-3B47110B3710> /usr/lib/system/libremovefile.dylib
0x939a1000 - 0x93d99ff5  com.apple.CoreGraphics (1.600.0 - 599.6) <08B9D207-B5A9-3647-91DF-D3E72CF8B82C> /System/Library/Frameworks/CoreGraphics.framework/Versions/A/CoreGraphics
0x93d9a000 - 0x93da0ffc  libCGXCoreImage.A.dylib (599.6) <5A423B94-604C-303E-9650-8736CABF8B31> /System/Library/Frameworks/CoreGraphics.framework/Versions/A/Resources/libCGXCoreImage.A.dylib
0x93da1000 - 0x93dafff3  com.apple.opengl (9.3.1 - 9.3.1) <6E0835DA-B1DD-37BA-8792-AC88E37DD857> /System/Library/Frameworks/OpenGL.framework/Versions/A/OpenGL
0x93db0000 - 0x93db1fff  com.apple.AddressBook.ContactsData (8.0 - 1365) <DF698417-2D22-3E3C-8C3F-4794A99A4AD9> /System/Library/PrivateFrameworks/ContactsData.framework/Versions/A/ContactsData
0x93db2000 - 0x93f42ff0  GLEngine (9.3.1) <CEC29DB5-BD15-323B-B7DD-A527A5DA8504> /System/Library/Frameworks/OpenGL.framework/Versions/A/Resources/GLEngine.bundle/GLEngine
0x93f43000 - 0x94013fef  libvDSP.dylib (423.32) <E2FA7230-A001-3F6B-9ACF-6998C51AD7DC> /System/Library/Frameworks/Accelerate.framework/Versions/A/Frameworks/vecLib.framework/Versions/A/libvDSP.dylib
0x94014000 - 0x9407bffc  com.apple.framework.CoreWLAN (4.0 - 400.45.1) <8DADD7D2-AB98-34ED-8D6F-335338502CBE> /System/Library/Frameworks/CoreWLAN.framework/Versions/A/CoreWLAN
0x9407c000 - 0x9407cfff  com.apple.Carbon (154 - 157) <6E680560-FD53-3C00-BDF7-7AFA28747DC8> /System/Library/Frameworks/Carbon.framework/Versions/A/Carbon
0x9407d000 - 0x9407dfff  com.apple.ApplicationServices (48 - 48) <7967F6FA-2984-3CC3-AD9A-7B9AEC562A2A> /System/Library/Frameworks/ApplicationServices.framework/Versions/A/ApplicationServices
0x9407e000 - 0x945ebfff  com.apple.QuartzComposer (5.1 - 316) <59E15BA7-B785-3DA3-A6CC-54930BDC2173> /System/Library/Frameworks/Quartz.framework/Versions/A/Frameworks/QuartzComposer.framework/Versions/A/QuartzComposer
0x945ec000 - 0x945f9fff  com.apple.Librarian (1.2 - 1) <5EE5DF44-1C2C-3F7B-9728-86960F6F3105> /System/Library/PrivateFrameworks/Librarian.framework/Versions/A/Librarian
0x945fa000 - 0x94670ff3  com.apple.securityfoundation (6.0 - 55122) <25149798-A37E-316F-84AB-93029EAF33D8> /System/Library/Frameworks/SecurityFoundation.framework/Versions/A/SecurityFoundation
0x94671000 - 0x946aeffb  libGLImage.dylib (9.3.1) <26AB4352-1F99-3170-B5E0-459F561233D6> /System/Library/Frameworks/OpenGL.framework/Versions/A/Libraries/libGLImage.dylib
0x946af000 - 0x946d2ff7  libc++abi.dylib (48) <5367BE5A-D475-3FB4-972D-E1DC999A709A> /usr/lib/libc++abi.dylib
0x946d3000 - 0x946defff  libcsfde.dylib (380) <AE294F8F-D72F-33D1-89B5-5B9D5AE4D5A9> /usr/lib/libcsfde.dylib
0x946df000 - 0x947b8ff6  com.apple.QuickLookUIFramework (5.0 - 622.3) <D32D7367-E986-31BB-B3AD-26C1AE6E8259> /System/Library/Frameworks/Quartz.framework/Versions/A/Frameworks/QuickLookUI.framework/Versions/A/QuickLookUI
0x947b9000 - 0x947c0fff  libMatch.1.dylib (19) <3B3680FC-2AC9-37CC-B262-5ACE2CF8939A> /usr/lib/libMatch.1.dylib
0x947c1000 - 0x94812ffb  com.apple.CoreMedia (1.0 - 1273.29) <303D0BCC-EE74-351C-9126-9A263DE32B95> /System/Library/Frameworks/CoreMedia.framework/Versions/A/CoreMedia
0x94813000 - 0x9486fffa  com.apple.print.framework.PrintCore (9.0 - 428) <3E248391-2669-328B-B84F-8763FE8E92BB> /System/Library/Frameworks/ApplicationServices.framework/Versions/A/Frameworks/PrintCore.framework/Versions/A/PrintCore
0x94870000 - 0x9488bff5  com.apple.openscripting (1.4 - 157) <5C161A52-8D2F-3D56-A988-05727BED7A59> /System/Library/Frameworks/Carbon.framework/Versions/A/Frameworks/OpenScripting.framework/Versions/A/OpenScripting
0x9488c000 - 0x948b6fff  libxslt.1.dylib (13) <249D54AB-1D82-38FE-ABEC-0D575450C73B> /usr/lib/libxslt.1.dylib
0x948b7000 - 0x9490cff7  com.apple.QuickLookFramework (5.0 - 622.3) <240EE739-B9C2-3D82-8659-E644458F5682> /System/Library/Frameworks/QuickLook.framework/Versions/A/QuickLook
0x9490d000 - 0x9491dff7  libsasl2.2.dylib (170) <CA1C07F6-8E17-315E-AE49-AB696DDE6707> /usr/lib/libsasl2.2.dylib
0x9491e000 - 0x94943ff7  com.apple.quartzfilters (1.8.0 - 1.7.0) <69D5791C-2DAA-34B2-A210-CED2B871A806> /System/Library/Frameworks/Quartz.framework/Versions/A/Frameworks/QuartzFilters.framework/Versions/A/QuartzFilters
0x94944000 - 0x949a5ff7  com.apple.Symbolication (1.4 - 129) <E5948C08-6ADF-3D86-9134-6AE49CF1DA0F> /System/Library/PrivateFrameworks/Symbolication.framework/Versions/A/Symbolication
0x949a6000 - 0x949aefff  liblaunch.dylib (842.1.4) <F3D92C6B-DF16-381D-8F61-9072C3D7CFE2> /usr/lib/system/liblaunch.dylib
0x949af000 - 0x949b0fff  libSystem.B.dylib (1197.1.1) <803C9A95-B5A4-39D6-A99E-210527EB7C68> /usr/lib/libSystem.B.dylib
0x949b1000 - 0x949b3fff  com.apple.securityhi (9.0 - 55005) <51765C73-80D1-33E3-9589-3E88380CE007> /System/Library/Frameworks/Carbon.framework/Versions/A/Frameworks/SecurityHI.framework/Versions/A/SecurityHI
0x949b4000 - 0x949b4ffd  com.apple.audio.units.AudioUnit (1.9 - 1.9) <F43CF0ED-A017-35EE-813D-37D08A60A74B> /System/Library/Frameworks/AudioUnit.framework/Versions/A/AudioUnit
0x949b5000 - 0x94b5d4af  libobjc.A.dylib (551.1) <31CBE178-E972-30D1-ADC6-4B8345CAE326> /usr/lib/libobjc.A.dylib
0x94b5e000 - 0x94bc7fff  com.apple.datadetectorscore (5.0 - 354.0) <7FD29756-23DC-3EB4-B659-4B886B99104A> /System/Library/PrivateFrameworks/DataDetectorsCore.framework/Versions/A/DataDetectorsCore
0x94bc8000 - 0x94d38fff  com.apple.QTKit (7.7.3 - 2826) <369CBC6B-CBC0-3703-9602-46B1C791E7A7> /System/Library/Frameworks/QTKit.framework/Versions/A/QTKit
0x94d39000 - 0x94d39fff  com.apple.Cocoa (6.8 - 20) <8368B11E-9F2C-384B-90D7-4348921BFE49> /System/Library/Frameworks/Cocoa.framework/Versions/A/Cocoa
0x94d3a000 - 0x94d46fff  libkxld.dylib (2422.50.20) <845E5533-19BF-3FF7-9F13-B0DE7C086819> /usr/lib/system/libkxld.dylib
0x94d47000 - 0x94d47ffd  libOpenScriptingUtil.dylib (157) <4D06E8ED-D312-34EA-A448-DFF45ADC3CE5> /usr/lib/libOpenScriptingUtil.dylib
0x94d48000 - 0x94d5bff7  com.apple.idsfoundation (10.0 - 1000) <1C0CCF49-109E-3C34-96ED-466B7BEB8551> /System/Library/PrivateFrameworks/IDSFoundation.framework/Versions/A/IDSFoundation
0x94d5c000 - 0x94e37ff7  com.apple.LaunchServices (572.23 - 572.23) <7E52FB5C-9ECF-3CB9-BF18-6652B8D8CDE0> /System/Library/Frameworks/CoreServices.framework/Versions/A/Frameworks/LaunchServices.framework/Versions/A/LaunchServices
0x94e39000 - 0x94e3eff3  libsystem_platform.dylib (24.1.4) <3128DCA6-95E7-3724-8F28-8A47652A40F5> /usr/lib/system/libsystem_platform.dylib
0x94e3f000 - 0x94e6fff7  com.apple.CoreServicesInternal (184.8 - 184.8) <88528205-9452-3EEC-BB27-DAAA7EC81E04> /System/Library/PrivateFrameworks/CoreServicesInternal.framework/Versions/A/CoreServicesInternal
0x94e70000 - 0x9515afd2  com.apple.vImage (7.0 - 7.0) <48ADE816-20A3-33FD-954A-2AF08194124A> /System/Library/Frameworks/Accelerate.framework/Versions/A/Frameworks/vImage.framework/Versions/A/vImage
0x9515b000 - 0x9523eff7  libcrypto.0.9.8.dylib (50) <84034263-DA16-3EAC-AF9B-E4D42946819C> /usr/lib/libcrypto.0.9.8.dylib
0x9523f000 - 0x95244fff  com.apple.MediaAccessibility (1.0 - 43) <D3D3D714-A701-3262-9647-8FF0994790D4> /System/Library/Frameworks/MediaAccessibility.framework/Versions/A/MediaAccessibility
0x95245000 - 0x95247ffb  libRadiance.dylib (1038) <F0D3F13B-5628-3DF9-8B86-A4D914567B25> /System/Library/Frameworks/ImageIO.framework/Versions/A/Resources/libRadiance.dylib
0x95248000 - 0x9524cff7  libmacho.dylib (845) <13CB2F83-D92E-31CE-AF7E-92C2776850CD> /usr/lib/system/libmacho.dylib
0x9524d000 - 0x9526cff9  com.apple.framework.Apple80211 (9.0 - 900.47) <68E399FF-AB98-378D-94AC-D0869A72344F> /System/Library/PrivateFrameworks/Apple80211.framework/Versions/A/Apple80211
0x9526d000 - 0x9527bff7  libz.1.dylib (53) <3D1E738F-D26C-3721-8E16-52473B560A8F> /usr/lib/libz.1.dylib
0x9527c000 - 0x952d1ff2  com.apple.Suggestions (3.0 - 137.1) <57EC1AEB-FD36-379C-B450-593109249890> /System/Library/PrivateFrameworks/Suggestions.framework/Versions/A/Suggestions
0x952d2000 - 0x95327ff3  com.apple.ImageCaptureCore (5.0 - 5.0) <47F32531-13C5-3B91-B7AA-72C888144C56> /System/Library/Frameworks/ImageCaptureCore.framework/Versions/A/ImageCaptureCore
0x95328000 - 0x9533fff4  com.apple.CoreMediaAuthoring (2.2 - 947) <7FE11029-A1F7-3D5A-9AA8-B9B1270FB494> /System/Library/PrivateFrameworks/CoreMediaAuthoring.framework/Versions/A/CoreMediaAuthoring
0x95340000 - 0x9534cffc  libbz2.1.0.dylib (29) <3CEF1E92-BA42-3F8A-8E8D-9E1F7658E5C7> /usr/lib/libbz2.1.0.dylib
0x9534d000 - 0x95355ffe  libGFXShared.dylib (9.3.1) <579E2B83-DF47-3E60-8708-05FB0FA0B78A> /System/Library/Frameworks/OpenGL.framework/Versions/A/Libraries/libGFXShared.dylib
0x95356000 - 0x95463fe4  com.apple.MediaControlSender (1.9 - 190.4) <27BF6FA7-62E8-3D1D-A9E7-31A161A3F244> /System/Library/PrivateFrameworks/MediaControlSender.framework/Versions/A/MediaControlSender
0x95464000 - 0x95467ff9  com.apple.TCC (1.0 - 1) <0B186843-9033-3E10-9D57-95895D84746F> /System/Library/PrivateFrameworks/TCC.framework/Versions/A/TCC
0x95468000 - 0x956cdff7  com.apple.AddressBook.framework (8.0 - 1365) <F694248C-FB1A-3477-B963-39A3D48AB35F> /System/Library/Frameworks/AddressBook.framework/Versions/A/AddressBook
0x956ce000 - 0x95723ff7  com.apple.framework.internetaccounts (2.1 - 210) <E7DFEDB5-07EA-3BE6-8E94-B281B29434AE> /System/Library/PrivateFrameworks/InternetAccounts.framework/Versions/A/InternetAccounts
0x95724000 - 0x957e7ff1  com.apple.CoreText (352.0 - 367.15) <746AD442-F7B4-3273-A36D-C7103D26F727> /System/Library/Frameworks/CoreText.framework/Versions/A/CoreText
0x957e8000 - 0x957ecffe  libCoreVMClient.dylib (58.1) <0EB8FFD7-AFED-3A63-810E-29629831D43D> /System/Library/Frameworks/OpenGL.framework/Versions/A/Libraries/libCoreVMClient.dylib
0x957ed000 - 0x958d3ff7  com.apple.coreui (2.1 - 231) <371FDD9D-A496-3233-A0AE-DB0F4E8C741B> /System/Library/PrivateFrameworks/CoreUI.framework/Versions/A/CoreUI
0x958d4000 - 0x958e1ff7  com.apple.AppleFSCompression (56 - 1.0) <D35A53AA-20CA-3767-B13C-F7EB555E6014> /System/Library/PrivateFrameworks/AppleFSCompression.framework/Versions/A/AppleFSCompression
0x958e2000 - 0x95928fff  libcurl.4.dylib (78) <23C3A63F-F242-3CD3-997B-EB735DC141D7> /usr/lib/libcurl.4.dylib
0x95929000 - 0x95c2aff1  com.apple.AOSKit (1.06 - 176) <E5067665-E177-37FF-AD38-0D995FB79741> /System/Library/PrivateFrameworks/AOSKit.framework/Versions/A/AOSKit
0x95c2b000 - 0x95cc7fff  com.apple.QD (3.50 - 298) <B131575F-C60E-3EFF-BD5B-405BBAF21112> /System/Library/Frameworks/ApplicationServices.framework/Versions/A/Frameworks/QD.framework/Versions/A/QD
0x95cc8000 - 0x95cd8ff5  com.apple.LangAnalysis (1.7.0 - 1.7.0) <F46F38CF-0DC5-3E04-AC68-9DEE81069E55> /System/Library/Frameworks/ApplicationServices.framework/Versions/A/Frameworks/LangAnalysis.framework/Versions/A/LangAnalysis
0x95cd9000 - 0x960fefe3  com.apple.VideoToolbox (1.0 - 1273.29) <C6836E54-8A1F-39C5-91C2-6F1924860DB3> /System/Library/Frameworks/VideoToolbox.framework/Versions/A/VideoToolbox
0x960ff000 - 0x96174ff1  com.apple.ApplicationServices.ATS (360 - 363) <56CA2D1C-30B4-3A6F-99FD-FD84F0797A03> /System/Library/Frameworks/ApplicationServices.framework/Versions/A/Frameworks/ATS.framework/Versions/A/ATS
0x96ad0000 - 0x96ad9fff  com.apple.AppleSRP (5.0 - 1) <6B946F4B-7DC4-3E82-BF2C-BE0930E3CF47> /System/Library/PrivateFrameworks/AppleSRP.framework/Versions/A/AppleSRP
0x96ada000 - 0x96b6bfff  com.apple.ColorSync (4.9.0 - 4.9.0) <09985EBE-72BE-3A12-B17A-C54B3BA66CBE> /System/Library/Frameworks/ApplicationServices.framework/Versions/A/Frameworks/ColorSync.framework/Versions/A/ColorSync
0x96b6c000 - 0x96b70ffc  libpam.2.dylib (20) <763AC655-931B-3891-AB6A-F2CD4A21F906> /usr/lib/libpam.2.dylib
0x96ba4000 - 0x96d06ff3  com.apple.CFNetwork (673.0.2 - 673.0.2) <753E63E2-98E7-34A9-AAFC-39AB412360C3> /System/Library/Frameworks/CFNetwork.framework/Versions/A/CFNetwork
0x96d07000 - 0x96d69ff3  com.apple.imfoundation (10.0 - 1000) <A91B00FC-303A-3A28-A09F-66923CDDBC80> /System/Library/PrivateFrameworks/IMFoundation.framework/Versions/A/IMFoundation
0x96d6a000 - 0x96d9cffb  com.apple.CoreAVCHD (5.7.0 - 5700.4.3) <66BEEBC6-FB45-3237-AE14-AFC6E81270DA> /System/Library/PrivateFrameworks/CoreAVCHD.framework/Versions/A/CoreAVCHD
0x96d9d000 - 0x96de9ff7  libcups.2.dylib (372) <D9E53821-855A-37F1-BE68-E080886C42D0> /usr/lib/libcups.2.dylib
0x96dea000 - 0x96debffd  libunc.dylib (28) <6EE1B741-707F-36E6-81CB-73CF3D8706E4> /usr/lib/system/libunc.dylib
0x96e8d000 - 0x96e8ffff  com.apple.SecCodeWrapper (3.0 - 1) <29ECC157-F444-31FE-99CC-A9289FF3AC8D> /System/Library/PrivateFrameworks/SecCodeWrapper.framework/Versions/A/SecCodeWrapper
0x96f2b000 - 0x96fb0ffc  com.apple.CorePDF (4.0 - 4) <3CF03C53-E439-389B-B1D1-4ACC92A55831> /System/Library/PrivateFrameworks/CorePDF.framework/Versions/A/CorePDF
0x96fb1000 - 0x96fb3fff  libquarantine.dylib (71) <50A89423-839C-31FE-BA55-0C2D04E0FFB4> /usr/lib/system/libquarantine.dylib
0x96fb4000 - 0x96fd1ffb  libresolv.9.dylib (54) <3EC12A7F-6BA1-3976-9F1F-6A4B76303028> /usr/lib/libresolv.9.dylib
0x96fd2000 - 0x96fd3fff  libsystem_blocks.dylib (63) <2AC67D5E-ECD4-3644-A53C-9684F9B7AA33> /usr/lib/system/libsystem_blocks.dylib
0x96fd4000 - 0x97032ff7  com.apple.CoreUtils (1.9 - 190.4) <E3693D43-DEC6-37AF-9BCE-33EC25F9AED4> /System/Library/PrivateFrameworks/CoreUtils.framework/Versions/A/CoreUtils
0x97033000 - 0x97325ff8  com.apple.CoreImage (9.0.54) <6430A3D0-F855-3F63-B3FB-E78F14E43512> /System/Library/Frameworks/QuartzCore.framework/Versions/A/Frameworks/CoreImage.framework/Versions/A/CoreImage
0x97326000 - 0x97351ff7  libsystem_network.dylib (241.3) <B8AB8C48-9247-3B44-8B38-38DC6ADCD684> /usr/lib/system/libsystem_network.dylib
0x97352000 - 0x97518ffb  libicucore.A.dylib (511.25) <44DDE9A4-578E-3D23-A41A-D8795D000A18> /usr/lib/libicucore.A.dylib
0x97522000 - 0x977a0ff7  com.apple.imageKit (2.5 - 770) <6A4909DA-63A7-3B5B-A45B-A363434F3108> /System/Library/Frameworks/Quartz.framework/Versions/A/Frameworks/ImageKit.framework/Versions/A/ImageKit
0x977a1000 - 0x9780bff7  com.apple.framework.CoreWiFi (2.0 - 200.21.1) <02056F8A-B440-3CB4-8FD7-580E58D9AD4D> /System/Library/Frameworks/CoreWiFi.framework/Versions/A/CoreWiFi
0x9780c000 - 0x97862ff6  com.apple.ScalableUserInterface (1.0 - 1) <5BBA0CD9-C615-39FA-8ED7-82DD5D24F858> /System/Library/Frameworks/QuartzCore.framework/Versions/A/Frameworks/ScalableUserInterface.framework/Versions/A/ScalableUserInterface
0x9818a000 - 0x9820aff7  com.apple.CoreServices.OSServices (600.4 - 600.4) <DDA5CB82-3BD7-3069-A563-805A7F13B71A> /System/Library/Frameworks/CoreServices.framework/Versions/A/Frameworks/OSServices.framework/Versions/A/OSServices
0x9820b000 - 0x98219fff  libxar.1.dylib (202) <B73748D4-F830-3C71-98B3-7A3ABF5136FD> /usr/lib/libxar.1.dylib
0x9821a000 - 0x98226ff7  com.apple.OpenDirectory (10.9 - 173.1.1) <2B1C7C2A-201D-31D5-9FE5-84BD984260FA> /System/Library/Frameworks/OpenDirectory.framework/Versions/A/OpenDirectory
0x98227000 - 0x98325fff  libJP2.dylib (1038) <9C8C9819-0714-3F7B-B01F-943AB1713C74> /System/Library/Frameworks/ImageIO.framework/Versions/A/Resources/libJP2.dylib
0x98326000 - 0x9832affa  libcache.dylib (62) <80341F7C-ECF1-3F65-9360-7E1B6A0FEDAC> /usr/lib/system/libcache.dylib
0x9832b000 - 0x983bdffe  libsystem_c.dylib (997.1.1) <67FA81D1-8612-3E99-A7CE-7F9973C8F723> /usr/lib/system/libsystem_c.dylib
0x983be000 - 0x98411ff3  com.apple.CoreMediaIO (403.0 - 4554) <19819554-6706-30B9-A1AE-DEF3EAFA2E91> /System/Library/Frameworks/CoreMediaIO.framework/Versions/A/CoreMediaIO
0x98412000 - 0x98443ffa  libsystem_m.dylib (3047.16) <1ABEB106-061B-3CDD-BF09-7A9A2302B79B> /usr/lib/system/libsystem_m.dylib
0x98444000 - 0x9846eff7  libsandbox.1.dylib (278.10) <FA2460C6-E31F-3063-AA70-77E491ADDCEF> /usr/lib/libsandbox.1.dylib
0x9846f000 - 0x98586ffb  com.apple.WebKit (9537 - 9537.71) <DB8265C7-FA4B-3455-876E-F08E6DA5A2C5> /System/Library/Frameworks/WebKit.framework/Versions/A/WebKit
0x98587000 - 0x986f9ffb  com.apple.audio.toolbox.AudioToolbox (1.9 - 1.9) <BA08CB4B-B6DA-31BE-BCE9-A738CB25A48A> /System/Library/Frameworks/AudioToolbox.framework/Versions/A/AudioToolbox
0x986fa000 - 0x98732ff7  com.apple.MediaKit (15 - 709) <D998C14A-CAB9-38A9-B193-DA5580EE9F30> /System/Library/PrivateFrameworks/MediaKit.framework/Versions/A/MediaKit
0x98733000 - 0x9876bfff  com.apple.LDAPFramework (2.4.28 - 194.5) <61D74F20-ACD5-3129-A50B-04A616B0A5FE> /System/Library/Frameworks/LDAP.framework/Versions/A/LDAP
0x98777000 - 0x9877bfff  com.apple.CommonPanels (1.2.6 - 96) <D2863981-6EA0-3E76-B723-28EDF255A0B9> /System/Library/Frameworks/Carbon.framework/Versions/A/Frameworks/CommonPanels.framework/Versions/A/CommonPanels
0x9879f000 - 0x987a1ffe  libCVMSPluginSupport.dylib (9.3.1) <DC5A185B-EE5C-367A-BD27-33BF3737C7BB> /System/Library/Frameworks/OpenGL.framework/Versions/A/Libraries/libCVMSPluginSupport.dylib
0x987a2000 - 0x987e4fff  libGLU.dylib (9.3.1) <F15F3C93-3B42-35AF-8417-B2F79FDE1B70> /System/Library/Frameworks/OpenGL.framework/Versions/A/Libraries/libGLU.dylib
0x987e5000 - 0x988f7ffc  libsqlite3.dylib (158) <B3DB0FED-FE4C-314D-8329-CF7708C8AAF4> /usr/lib/libsqlite3.dylib
0x988f8000 - 0x9894bfff  com.apple.htmlrendering (77 - 1.1.4) <15EC39A7-12E7-3D63-86F3-394B2C9140FC> /System/Library/Frameworks/Carbon.framework/Versions/A/Frameworks/HTMLRendering.framework/Versions/A/HTMLRendering
0x9894c000 - 0x98952ff7  com.apple.AOSNotification (1.7.0 - 760.3) <763BDBC3-A989-3A40-B8DA-1C90BEA36A3C> /System/Library/PrivateFrameworks/AOSNotification.framework/Versions/A/AOSNotification
0x98953000 - 0x98957fff  libheimdal-asn1.dylib (323.12) <9EA2A221-301B-3B9A-BBF2-38134145B5A8> /usr/lib/libheimdal-asn1.dylib
0x98958000 - 0x98987ff1  com.apple.frameworks.CoreDaemon (1.3 - 1.3) <92791082-78FB-342C-B9DB-B57847EC3A6F> /System/Library/PrivateFrameworks/CoreDaemon.framework/Versions/B/CoreDaemon
0x98988000 - 0x989b4ff7  com.apple.DictionaryServices (1.2 - 208) <099E9D84-9248-3806-99EC-E82E2CFF0F3D> /System/Library/Frameworks/CoreServices.framework/Versions/A/Frameworks/DictionaryServices.framework/Versions/A/DictionaryServices
0x989b5000 - 0x989bdfee  libcldcpuengine.dylib (2.3.58) <0D64EDBD-4294-38E3-8C64-E4AD905568C7> /System/Library/Frameworks/OpenCL.framework/Versions/A/Libraries/libcldcpuengine.dylib
0x989be000 - 0x989bffff  com.apple.marco (10.0 - 1000) <AF208D48-953A-3F2B-82FF-8EFC0F2FB706> /System/Library/PrivateFrameworks/Marco.framework/Versions/A/Marco
0x989c0000 - 0x98a5fff7  libCoreStorage.dylib (380) <DDEB31B3-2628-34FE-B50B-B889383053E0> /usr/lib/libCoreStorage.dylib
0x98a60000 - 0x98a6ffff  libGL.dylib (9.3.1) <32F61D19-8636-3B3F-94A2-AB2C4367B82A> /System/Library/Frameworks/OpenGL.framework/Versions/A/Libraries/libGL.dylib
0x98a70000 - 0x98aadff7  libauto.dylib (185.5) <CD008E66-4A0C-35F5-8D72-80D76A716A03> /usr/lib/libauto.dylib
0x98aae000 - 0x98b5affb  libvMisc.dylib (423.32) <43873EFF-FB43-3301-BEE8-F2C3A046D7A6> /System/Library/Frameworks/Accelerate.framework/Versions/A/Frameworks/vecLib.framework/Versions/A/libvMisc.dylib
0x98b5b000 - 0x98b64fff  com.apple.speech.recognition.framework (4.2.4 - 4.2.4) <2BD6E0EE-C1B3-3655-A0B6-0587CE8F65DE> /System/Library/Frameworks/Carbon.framework/Versions/A/Frameworks/SpeechRecognition.framework/Versions/A/SpeechRecognition
0x98b65000 - 0x98dd2ff6  com.apple.security (7.0 - 55471) <5FCF76B2-92C6-3404-87D3-91B3F6E203AA> /System/Library/Frameworks/Security.framework/Versions/A/Security
0x98dd3000 - 0x98de9ff9  com.apple.aps.framework (4.0 - 4.0) <850A175F-117E-3E39-9922-1538F947B4D0> /System/Library/PrivateFrameworks/ApplePushService.framework/Versions/A/ApplePushService
0x98dea000 - 0x98e30ff7  libFontRegistry.dylib (126) <39321A9B-8585-37AF-A070-8C93C79B8777> /System/Library/Frameworks/ApplicationServices.framework/Versions/A/Frameworks/ATS.framework/Versions/A/Resources/libFontRegistry.dylib
0x98e31000 - 0x98e32ffc  com.apple.TrustEvaluationAgent (2.0 - 25) <064B485D-56E0-3DD7-BBE2-E08A5BFFF8B3> /System/Library/PrivateFrameworks/TrustEvaluationAgent.framework/Versions/A/TrustEvaluationAgent
0x98e33000 - 0x99cccff9  com.apple.WebCore (9537 - 9537.70) <C1218BD7-204F-3766-953D-D0128C153FB6> /System/Library/Frameworks/WebKit.framework/Versions/A/Frameworks/WebCore.framework/Versions/A/WebCore
0x99ccd000 - 0x99db9ff7  libxml2.2.dylib (26) <32040145-6FD6-3AD2-B98B-39F73BF9AC47> /usr/lib/libxml2.2.dylib
0x99dba000 - 0x99df9ff7  com.apple.bom (12.0 - 192) <78853A0A-49F0-31D9-883B-C70BD7EB9659> /System/Library/PrivateFrameworks/Bom.framework/Versions/A/Bom
0x99dfa000 - 0x99e48ff9  com.apple.HIServices (1.22 - 466) <30636237-408A-3552-90C1-1279348DF7CB> /System/Library/Frameworks/ApplicationServices.framework/Versions/A/Frameworks/HIServices.framework/Versions/A/HIServices
0x99e49000 - 0x99e51fff  libsystem_dnssd.dylib (522.1.11) <FED5B4B5-0769-3D42-9DE9-809B80EEB949> /usr/lib/system/libsystem_dnssd.dylib
0x99e52000 - 0x99e66ff9  com.apple.MultitouchSupport.framework (245.13 - 245.13) <6860A0D0-3654-3B02-B2E9-C4D2637167B8> /System/Library/PrivateFrameworks/MultitouchSupport.framework/Versions/A/MultitouchSupport
0x99e67000 - 0x99edcffb  com.apple.framework.IOKit (2.0.1 - 907.1.12) <F9CD3F13-698E-3C63-BD2A-92B5B0B341A4> /System/Library/Frameworks/IOKit.framework/Versions/A/IOKit
0x99edd000 - 0x99f1cff5  com.apple.ids (10.0 - 1000) <AEDCAD16-6626-3A0B-A9BE-3FC8A47CEB52> /System/Library/PrivateFrameworks/IDS.framework/Versions/A/IDS
0x99f1d000 - 0x99f6dff7  libcorecrypto.dylib (161.1) <135FD99E-2211-3DF4-825C-C9F816107F0C> /usr/lib/system/libcorecrypto.dylib
0x99f6e000 - 0x99f79ff6  com.apple.NetAuth (5.0 - 5.0) <3B2E9615-EE12-38FC-BDCF-09529FF9464B> /System/Library/PrivateFrameworks/NetAuth.framework/Versions/A/NetAuth
0x99f7a000 - 0x9a086fff  com.apple.ImageIO.framework (3.3.0 - 1038) <C8414A65-6A66-39E3-95BC-BFF4007012CD> /System/Library/Frameworks/ImageIO.framework/Versions/A/ImageIO
0x9a0b1000 - 0x9a0b1fff  libodfde.dylib (20) <0E8C1A1F-5BE9-378E-B1DA-564E57BD71E3> /usr/lib/libodfde.dylib
0x9a0b2000 - 0x9a0cdff6  libPng.dylib (1038) <F39168D4-ABEB-3C2D-A763-B9D3E1EF43BC> /System/Library/Frameworks/ImageIO.framework/Versions/A/Resources/libPng.dylib
0x9a0ce000 - 0x9a0d1ffe  com.apple.LoginUICore (3.0 - 3.0) <6FE961A4-3C17-3004-B50B-FD78FDC28350> /System/Library/PrivateFrameworks/LoginUIKit.framework/Versions/A/Frameworks/LoginUICore.framework/Versions/A/LoginUICore
0x9a0d2000 - 0x9a0d7ff7  com.apple.print.framework.Print (9.0 - 260) <EB1471EA-B2C6-38F4-AEA3-E0A3B5CB674D> /System/Library/Frameworks/Carbon.framework/Versions/A/Frameworks/Print.framework/Versions/A/Print
0x9a0d8000 - 0x9a0fcfff  libxpc.dylib (300.1.17) <4DA4CF6E-170C-3503-9187-3FAE983E6B34> /usr/lib/system/libxpc.dylib
0x9a0fd000 - 0x9a108fff  com.apple.CrashReporterSupport (10.9 - 538) <16850C12-BBC7-3F02-AA33-A0BFE5FAD6FE> /System/Library/PrivateFrameworks/CrashReporterSupport.framework/Versions/A/CrashReporterSupport
0x9a109000 - 0x9a1a7ff7  com.apple.PDFKit (2.9 - 2.9) <561F6028-AFF0-3F33-808E-9C2567217F96> /System/Library/Frameworks/Quartz.framework/Versions/A/Frameworks/PDFKit.framework/Versions/A/PDFKit
0x9a1a8000 - 0x9a1aeffb  libunwind.dylib (35.3) <099D1A6F-A1F0-3D05-BF1C-0A7BB32D39C2> /usr/lib/system/libunwind.dylib
0x9a201000 - 0x9a208ffb  libsystem_pthread.dylib (53.1.4) <951ABDE1-7276-3ACC-BFCE-E3BDAC557202> /usr/lib/system/libsystem_pthread.dylib
0x9a209000 - 0x9a22dfff  libJPEG.dylib (1038) <212B0986-9227-397C-9493-BCB190EC020E> /System/Library/Frameworks/ImageIO.framework/Versions/A/Resources/libJPEG.dylib
0x9a22e000 - 0x9a559ff6  com.apple.Foundation (6.9 - 1056) <3DD053D8-0C87-3469-B39B-7B96D539006F> /System/Library/Frameworks/Foundation.framework/Versions/C/Foundation
0x9a55a000 - 0x9a6b0ff0  libBLAS.dylib (1094.5) <74310C2F-4FDB-3995-A01A-5AFB83010A43> /System/Library/Frameworks/Accelerate.framework/Versions/A/Frameworks/vecLib.framework/Versions/A/libBLAS.dylib
0x9a6b1000 - 0x9a6c9ff7  libsystem_malloc.dylib (23.1.10) <2F6E37C7-9832-3BEF-99E6-B3AD94D001F0> /usr/lib/system/libsystem_malloc.dylib
0x9a77f000 - 0x9b39aff3  com.apple.AppKit (6.9 - 1265) <B32497D2-385F-37CF-98DC-03029EC5D9C4> /System/Library/Frameworks/AppKit.framework/Versions/C/AppKit
0x9b39b000 - 0x9b3a5ff7  com.apple.speech.synthesis.framework (4.6.2 - 4.6.2) <16E20DCD-89F4-3C8E-9DBA-EED359807038> /System/Library/Frameworks/ApplicationServices.framework/Versions/A/Frameworks/SpeechSynthesis.framework/Versions/A/SpeechSynthesis
0x9b3a6000 - 0x9b3c4ff5  com.apple.frameworks.preferencepanes (16.0 - 16.0) <CBDCD233-6DB5-3A54-B757-31859CCB0AF2> /System/Library/Frameworks/PreferencePanes.framework/Versions/A/PreferencePanes
0x9b3c5000 - 0x9b414fff  com.apple.opencl (2.3.57 - 2.3.57) <8244B3C7-54AF-3C04-B3CD-0D0707F531B3> /System/Library/Frameworks/OpenCL.framework/Versions/A/OpenCL
0x9b415000 - 0x9b428fff  com.apple.ImageCapture (9.0 - 9.0) <4C5478AA-2184-3FCD-ABB4-1AC53CC90FFF> /System/Library/Frameworks/Carbon.framework/Versions/A/Frameworks/ImageCapture.framework/Versions/A/ImageCapture
0x9b429000 - 0x9b42dffc  com.apple.IOSurface (91 - 91) <E3DD459F-CDCC-337F-A8D6-FB35569E2ECF> /System/Library/Frameworks/IOSurface.framework/Versions/A/IOSurface
0x9b42e000 - 0x9b437ffa  com.apple.CommonAuth (4.0 - 2.0) <6CB82D57-3C55-39E5-9036-8047DF3E6F57> /System/Library/PrivateFrameworks/CommonAuth.framework/Versions/A/CommonAuth
0x9b438000 - 0x9b4e3ffd  com.apple.imcore (10.0 - 1000) <F01B2F9F-8C6C-3BE1-A1A6-3D51EF393B76> /System/Library/PrivateFrameworks/IMCore.framework/Versions/A/IMCore
0x9b4e4000 - 0x9b50bfff  com.apple.CoreVideo (1.8 - 117.2) <6751F947-284C-38C2-992E-B78B97A6F2AD> /System/Library/Frameworks/CoreVideo.framework/Versions/A/CoreVideo
0x9b50c000 - 0x9b53dff4  com.apple.securityinterface (9.0 - 55047) <7C4F9ACD-5CE1-3CC5-8DEF-4D746E226894> /System/Library/Frameworks/SecurityInterface.framework/Versions/A/SecurityInterface
0x9b53e000 - 0x9b66bff9  com.apple.avfoundation (2.0 - 651.12) <E7712970-182F-3882-9AC9-C02738244C24> /System/Library/Frameworks/AVFoundation.framework/Versions/A/AVFoundation
0x9b775000 - 0x9b780fff  libGPUSupportMercury.dylib (9.3.1) <2139D05F-0D1B-34F2-9727-F1CA0DEC8751> /System/Library/PrivateFrameworks/GPUSupport.framework/Versions/A/Libraries/libGPUSupportMercury.dylib
0x9b781000 - 0x9b983ff7  com.apple.CoreFoundation (6.9 - 855.11) <50F70E07-043A-3A2F-87EF-A36BA6C5C9D9> /System/Library/Frameworks/CoreFoundation.framework/Versions/A/CoreFoundation
0x9ba30000 - 0x9bdf5ff6  libLAPACK.dylib (1094.5) <E6286E68-3501-31AC-813E-75B3B3968011> /System/Library/Frameworks/Accelerate.framework/Versions/A/Frameworks/vecLib.framework/Versions/A/libLAPACK.dylib
0x9bdf6000 - 0x9be0efff  com.apple.CFOpenDirectory (10.9 - 173.1.1) <B87E9D92-516B-33AE-9652-86F88A8D507A> /System/Library/Frameworks/OpenDirectory.framework/Versions/A/Frameworks/CFOpenDirectory.framework/Versions/A/CFOpenDirectory
0x9be0f000 - 0x9be3aff7  libpcap.A.dylib (42) <66FBEAD3-FE91-3A89-8706-FB95229068AC> /usr/lib/libpcap.A.dylib
0x9be3b000 - 0x9c09ffff  com.apple.CoreData (107 - 481) <18A40E6E-0246-30AE-8E51-39DF175DF4D6> /System/Library/Frameworks/CoreData.framework/Versions/A/CoreData
0x9c0a0000 - 0x9c21eff8  libGLProgrammability.dylib (9.3.1) <E6A9597F-F7A8-32D9-9A84-0FF78E7CBB44> /System/Library/Frameworks/OpenGL.framework/Versions/A/Libraries/libGLProgrammability.dylib
0x9c21f000 - 0x9c21ffff  com.apple.CoreServices (59 - 59) <7E6E8C4A-15FA-3818-B472-23FEF07DF7F6> /System/Library/Frameworks/CoreServices.framework/Versions/A/CoreServices
0x9c220000 - 0x9c275fff  libc++.1.dylib (120) <AE695E83-E3C6-3F13-BFC2-A2945AEAB0AC> /usr/lib/libc++.1.dylib
0x9c276000 - 0x9c280fff  com.apple.bsd.ServiceManagement (2.0 - 2.0) <F8BC17FD-3B68-37E9-AEA2-6BB3D804AC8F> /System/Library/Frameworks/ServiceManagement.framework/Versions/A/ServiceManagement
0x9c281000 - 0x9c2d5fff  com.apple.AppleVAFramework (5.0.27 - 5.0.27) <501DEC6E-EAFC-37AE-8369-451B18DFB649> /System/Library/PrivateFrameworks/AppleVA.framework/Versions/A/AppleVA
0x9c2d6000 - 0x9c2daffa  libGIF.dylib (1038) <5CEB4EDF-B0B6-33A6-BDDE-8C0D3226FA72> /System/Library/Frameworks/ImageIO.framework/Versions/A/Resources/libGIF.dylib
0x9c2db000 - 0x9c2dbffe  com.apple.AOSMigrate (1.0 - 1) <CC207D2B-0146-39E6-B9B0-205BF1F99856> /System/Library/PrivateFrameworks/AOSMigrate.framework/Versions/A/AOSMigrate
0x9c2dc000 - 0x9c345fff  com.apple.SystemConfiguration (1.13 - 1.13) <542075CD-9085-3F30-B84B-DD0277D6A40E> /System/Library/Frameworks/SystemConfiguration.framework/Versions/A/SystemConfiguration
0x9c346000 - 0x9c354ff7  com.apple.Sharing (132.2 - 132.2) <87DBFC7A-9689-3B8E-AD16-5A9DFF9DE625> /System/Library/PrivateFrameworks/Sharing.framework/Versions/A/Sharing

External Modification Summary:
  Calls made by other processes targeting this process:
    task_for_pid: 1
    thread_create: 0
    thread_set_state: 0
  Calls made by this process:
    task_for_pid: 0
    thread_create: 0
    thread_set_state: 0
  Calls made by all processes on this machine:
    task_for_pid: 115542
    thread_create: 0
    thread_set_state: 849

VM Region Summary:
ReadOnly portion of Libraries: Total=220.1M resident=79.7M(36%) swapped_out_or_unallocated=140.4M(64%)
Writable regions: Total=382.6M written=81.8M(21%) resident=166.0M(43%) swapped_out=24K(0%) unallocated=216.6M(57%)
 
REGION TYPE                      VIRTUAL
===========                      =======
ATS (font support)                 31.9M
CG backing stores                  21.3M
CG image                           8580K
CG raster data                      624K
CG shared images                    244K
CoreAnimation                      29.0M
CoreAnimation (reserved)             16K        reserved VM address space (unallocated)
CoreServices                         16K
Foundation                            4K
IOKit                             116.2M
Image IO                           1892K
JS JIT generated code                32K
JS VM register file                4096K
JS garbage collector               1216K
Kernel Alloc Once                     4K
MALLOC                             91.9M
MALLOC (admin)                       48K
Memory Tag 241                       96K
Memory Tag 242                       12K
Memory Tag 250                     2764K
OpenCL                              148K
OpenGL GLSL                        1280K
SQLite page cache                   256K
Stack                              74.7M
VM_ALLOCATE                        18.4M
WebKit Malloc                      36.3M
__DATA                             38.5M
__IMAGE                             528K
__LINKEDIT                         47.1M
__OBJC                             4136K
__PAGEZERO                            4K
__TEXT                            173.1M
__UNICODE                           544K
mapped file                       113.9M
shared memory                        68K
===========                      =======
TOTAL                             818.0M
TOTAL, minus reserved VM space    818.0M
 

Model: MacBookPro11,1, BootROM MBP111.0138.B03, 2 processors, Intel Core i5, 2.6 GHz, 16 GB, SMC 2.16f58
Graphics: Intel Iris, Intel Iris, Built-In, 1024 MB
Memory Module: BANK 0/DIMM0, 8 GB, DDR3, 1600 MHz, 0x802C, 0x31364B544631473634485A2D314736453120
Memory Module: BANK 1/DIMM0, 8 GB, DDR3, 1600 MHz, 0x802C, 0x31364B544631473634485A2D314736453120
AirPort: spairport_wireless_card_type_airport_extreme (0x14E4, 0x112), Broadcom BCM43xx 1.0 (6.30.223.154.45)
Bluetooth: Version 4.2.1f2 12982, 3 services, 15 devices, 1 incoming serial ports
Serial ATA Device: APPLE SSD SM0512F, 500.28 GB
USB Device: Internal Memory Card Reader
USB Device: Apple Internal Keyboard / Trackpad
USB Device: BRCM20702 Hub
USB Device: Bluetooth USB Host Controller
Thunderbolt Bus: MacBook Pro, Apple Inc., 17.2


{% endcodeblock %}
