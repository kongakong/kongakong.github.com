---
layout: post
title: "resize images in a Stackoverflow post"
date: 2014-01-10 14:18
comments: true
categories: stackoverflow
---

Markdown does not allow us to specify the size of an link image.

To get around this restriction it is what I did:

1. Upload an image as usual
===========================

Stackoverflow will add these lines to your post:

{% codeblock %}
![enter image description here][1]


  [1]: http://i.stack.imgur.com/jxBxR.png
{% endcodeblock %}


2. Change the above to an image tag
===================================
 

{% codeblock %}

<img src="http://i.stack.imgur.com/jxBxR.png" width="100" height="100">

{% endcodeblock %}

Done
