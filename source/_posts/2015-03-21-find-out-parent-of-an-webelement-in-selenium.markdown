---
layout: post
title: "find out parent HTML element of a webelement in selenium"
date: 2015-03-21 19:40
comments: true
categories: selenium python xpath
---

Sometimes you want to find out the parent HTML element of the current WebElement you are working on. The `parent` property of the WebElement, however, will give you an instance of WebDriver. 

You can find this out by

    parent = element.find_element_by_xpath('..')
