---
layout: post
title: "resize tmux window"
date: 2015-02-25 10:38
comments: true
categories: tmux
---

The size of the window is limited by the smallest size of attached client.

So to reset the size we need to detach all non-active clients

This is the command:

     C-b :attach -d
