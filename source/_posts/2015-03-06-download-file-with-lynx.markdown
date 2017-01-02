---
layout: post
title: "Download file with lynx"
date: 2015-03-06 14:27
comments: true
categories: cygwin lynx 
---

My cygwin does not have `wget` or `curl` preinstalled. So to download a file from internet I do

        lynx -source url  > file.txt
