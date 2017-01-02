---
layout: post
title: "Prepare a maverick usb"
date: 2014-03-01 07:08
comments: true
categories: osx 
---

Get a USB flash drive that is at least 8 GBs. 
 
Use Disk Utility to prepare the flash drive:

* Click on the Erase tab in the DU main window.
* Set the format type to `Mac OS Extended (Journaled.)` 
* Click on the Erase button. 

You can leave the name of the flash drive at the system default, "Untitled." Open the Terminal in the Utilities folder. Run this command line after the prompt in the Terminal's window:
 
    sudo /Applications/Install\ OS\ X\ Mavericks.app/Contents/Resources/createinstallmedia \
    --volume /Volumes/Untitled --applicationpath /Applications/Install\ OS\ X\ Mavericks.app --nointeraction

No need of any third party software

