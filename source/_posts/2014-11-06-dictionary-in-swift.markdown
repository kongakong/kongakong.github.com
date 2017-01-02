---
layout: post
title: "dictionary in swift"
date: 2014-11-06 11:03
comments: true
categories: swift dictionary
---

Dictionary look returns an Optional type by default


        var dict = ["name":"hello"]

        println(dict["name"])         # "Optional("hello")

        println(dict["name"]!)        # "hello"
