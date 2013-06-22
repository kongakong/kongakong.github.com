---
layout: post
title: "dyld: library not loaded"
date: 2013-06-22 15:55
comments: true
categories: osx 
---
```
dyld: Library not loaded: @rpath/SenTestingKit.framework/Versions/A/SenTestingKit
  Referenced from: /Users/antkong/Library/Developer/Xcode/DerivedData/ebookreader-gplhzhssjudwymcrqpmxxokvhqvn/Build/Products/Debug/ebookreader.app/Contents/MacOS/ebookreader
  Reason: image not found
```

Is it going to be [the answer](http://lists.apple.com/archives/xcode-users/2008/May/msg00647.html)?

> I have found a fix by getting to know what @rpath means. It is a tag placed in the generation of an executable's binary format indicating alternate paths to look for dependencies (including other libraries). By setting the build option "runpath search paths" to the developer frameworks directory, the executable looks in this place for the sen testing library at run time.

