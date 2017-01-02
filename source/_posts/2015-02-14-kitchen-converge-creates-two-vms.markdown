---
layout: post
title: "kitchen converge creates two VMs"
date: 2015-02-14 18:17
comments: true
categories: chef kitchen
---

It is because in .kitchen.yml, it contains these two lines:

        platforms:
          - name: ubuntu-12.04
          - name: centos-6.5 



I can either specify the partform every time I use the kitchen command or simply remove the platform that I do not need.
