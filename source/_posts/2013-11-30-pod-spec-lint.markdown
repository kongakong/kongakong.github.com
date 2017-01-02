---
layout: post
title: "pod spec lint"
date: 2013-11-30 21:26
comments: true
categories:  osx pod cocoapod
---

Wanted to make a custom podspec to fix the JSONKit compilation error, as mentioned [here](http://www.ahwkong.com/post/2013/11/28/jsonkit-isa-is-deprecated/)

Made a first cut and wanted to do a sanity check. At first it did not look good.

{% codeblock %}
$ pod spec lint /Users/antkong/Documents/Cocoa/jsonkit/JSONKit/JSONKit.ak.spec
pod spec lint /Users/antkong/Documents/Cocoa/jsonkit/JSONKit/JSONKit.ak.spec

[!] Unable to find a spec named `/Users/antkong/Documents/Cocoa/jsonkit/JSONKit/JSONKit.ak.spec'.

{% endcodeblock %}


There are several issues here: 

* the pod lint does not take a file parameter
* the pod runtime expects the spec file to use file extension `podspec`.


Fixed the above and committed the code change. Now I got these error messages:

{% codeblock %}

$ pod spec lint

 -> JSONKit (1.6)
    - WARN  | Git sources should specify a tag.
    - NOTE  | [xcodebuild]  warning: no rule to process file 'JSONKit/JSONKit.podspec' of type text for architecture x86_64
    - NOTE  | [xcodebuild]  JSONKit/JSONKit.m:2600:77: warning: bitmasking for introspection of Objective-C object pointers is strongly discouraged [-Wdeprecated-objc-pointer-introspection]
    - WARN  | Unable to find a license file
    - NOTE  | [xcodebuild]  warning: no rule to process file 'JSONKit/JSONKit.podspec' of type text for architecture armv7
    - NOTE  | [xcodebuild]  warning: no rule to process file 'JSONKit/JSONKit.podspec' of type text for architecture armv7s

Analyzed 1 podspec.

[!] The spec did not pass validation.

{% endcodeblock %}

Need to work on the two warnings

