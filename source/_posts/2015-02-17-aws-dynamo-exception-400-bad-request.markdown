---
layout: post
title: "AWS Dynamo Exception: 400 Bad Request"
date: 2015-02-17 15:14
comments: true
categories: aws dynamo 
---

Getting this error from my server code which uses boto to interace with Dynamo


       [Mon Feb 16 07:25:22 2015] [error] JSONResponseError: JSONResponseError: 400 Bad Request
       [Mon Feb 16 07:25:22 2015] [error] {u'message': u'Signature expired: 20150216T072522Z is now earlier than 20150216T07252
       2Z (20150216T074022Z - 15 min.)', u'__type': u'com.amazon.coral.service#InvalidSignatureException'}


The server is a **Window Server 2012 Standard** box

Reboot the box fixed the problem
