---
layout: post
title: "bottle and parameters"
date: 2014-03-03 22:58
comments: true
categories: python bottle 
---

Use   `request.query` to retrieve the url parameters

{% codeblock lang:python %}

#coding: utf-8
from bottle import *
 
@route('/')
@route('/index.html')
def index():
    return '<a href="/hello">Go to Hello page</a>'

@route('/hello')
def hello():
    name = None
    names = request.query.getall('name')
    if names:
        name = names[0]
    return '<h1>Hello %s</h1>' % name

run(host='localhost', port=8000, reloader=True)

{% endcodeblock %}
