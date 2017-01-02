---
layout: post
title: "s3 policy and webhosting"
date: 2015-04-21 12:50
comments: true
categories: s3 
---

A policy is the necessary condition for turning a s3 bucket public

You can add this policy to enable public access

        {
          "Version": "2012-10-17",
          "Id": "Public webserver policy",
          "Statement": [
            {
              "Sid": "readonly policy",
              "Effect": "Allow",
              "Principal": "*",
              "Action": "s3:GetObject",
              "Resource": "arn:aws:s3:::YOUR_BUCKET_NAME/*"
            }
          ]
        }

Then you will need to enable static website hosting.

But the policy alone is enough to control the openness of the bucket 

