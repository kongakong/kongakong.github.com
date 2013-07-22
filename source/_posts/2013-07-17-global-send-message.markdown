---
layout: post
title: "global:send_message"
date: 2013-07-17 08:31
comments: true
categories: erlang
---

`!` ('bang') should not be used to call a globally registered name. Instead, you should use `global:send`

A bit disappointed when I first learn about this: didn't I come to erlang for the bang operator? Now you take it away from me, `global` module.
