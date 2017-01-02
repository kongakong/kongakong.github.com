---
layout: post
title: "find out script location in bash"
date: 2015-03-03 06:46
comments: true
categories: bash 
---

This is the most portable method:

      DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
