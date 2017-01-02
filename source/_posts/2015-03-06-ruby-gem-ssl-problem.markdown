---
layout: post
title: "ruby gem ssl problem"
date: 2015-03-06 15:08
comments: true
categories: ruby gem 
---

Gem install can throw a ssl exception. This is a [solution on Stackoverflow](http://stackoverflow.com/a/27298259/58129)

Summary of the remedy:

**1. Download**

    https://raw.githubusercontent.com/rubygems/rubygems/master/lib/rubygems/ssl_certs/AddTrustExternalCARoot-2048.pem

**2. Find out installation location**

        C:\>gem which rubygems
        C:/Ruby21/lib/ruby/2.1.0/rubygems.rb


**3. Install the file**

Then just copy the .pem file into `../2.1.0/rubygems/ssl_certs/`
