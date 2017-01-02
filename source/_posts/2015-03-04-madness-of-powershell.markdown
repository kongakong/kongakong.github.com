---
layout: post
title: "madness of powershell"
date: 2015-03-04 17:11
comments: true
categories: powershell windows
---

Who will design a tool for IT professional this way? It is a pure maddness

I want to dump some output from powershell. It is a very common task but somehow Powershell takes the liberty to truncate the output based on arbitrary condition.

Apparently when I am testing the powershell script I use a resized and large DOS prompt for my work.

Use of `ft -autoresise` prints the full string of the Commandline field in one line. It is what I need. `wrap` or `nowrap` does not produce desired result.

After testing is done, I deploy the script to run as a background task. 

Now powershell decides it wants to truncate the commandline field. Now I am getting some "c:\some\path\..." instead of the full path of the executables.

Utter maddenss. A waste of everyone's time!


Solution:

        ft -AutoSize | out-string -width 4096 
