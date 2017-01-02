---
layout: post
title: "It happens too often"
date: 2015-02-16 10:14
comments: true
categories: chef 
---

The provisioning failed a few times this morning:


       Reading state information...
       The following extra packages will be installed:
         patch
       Suggested packages:
         diffutils-doc policykit-1
       The following NEW packages will be installed:
         patch update-notifier-common
       0 upgraded, 2 newly installed, 0 to remove and 0 not upgraded.
       Need to get 248 kB of archives.
       After this operation, 2,361 kB of additional disk space will be used.
       Err http://us.archive.ubuntu.com/ubuntu/ trusty-updates/main patch amd64 2.7.1-4ubuntu1
         Could not resolve 'us.archive.ubuntu.com'
       Err http://us.archive.ubuntu.com/ubuntu/ trusty/main update-notifier-common all 0.154.1
         Could not resolve 'us.archive.ubuntu.com'
       STDERR: E: Failed to fetch http://us.archive.ubuntu.com/ubuntu/pool/main/p/patch/patch_2.7.1-4ubuntu1_amd64.deb  Could not resolve 'us.archive.ubuntu.com'

       E: Failed to fetch http://us.archive.ubuntu.com/ubuntu/pool/main/u/update-notifier/update-notifier-common_0.154.1_all.deb  Could not resolve 'us.archive.ubuntu.com'

But when I ping the server, it responds perfectly.
