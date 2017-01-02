---
layout: post
title: "Riak Content Type"
date: 2013-09-12 22:28
comments: true
categories: riak
---

The content-type is important for Riak KV: Various clients will use it to identify the difference between a response where the whole body is the key, or a response that contains siblings

It will also allow you to version your objects better. Here are a few suggestions (of course replace the text between the < >):

- `application/octet-stream` - this is usually used for binary data, and is the easiest thing to set the content-type to.
- `application/vnd.<company name>.<useful type name here>` - a vendor-specific type, which you can create yourself
- `application/vnd.<company name>.<useful type name here>.v<version number>` - another vendor-specific type, which supports versioning.

Source: by Sam Elliott in the mailing list
