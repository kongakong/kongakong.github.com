---
layout: post
title: "ochiwa unable to connect to sensu"
date: 2015-02-06 05:13
comments: true
categories: chef sensu ochiwa  
---

I used chef to install sensu and ochiwa.

In the ocihwa log I see a lot of 'connection refused' error

    {"Date":"2015-02-05T09:42:23.516606749Z","Level":"warning","Src":{"Func":"github.com/sensu/uchiwa/uchiwa.Build","Line":49},"Output":"API call to \"http://127.0.0.1:4567/stashes\" returned: Get http://127.0.0.1:4567/stashes: dial tcp 127.0.0.1:4567: connection refused"}

With help from sensu irc chatroom, I checked

    netstat -anp | grep 4567

There is no process.

    service sensu-api status

The service is stopped.

After starting the service, ochiwa can talk to sensu server now.
