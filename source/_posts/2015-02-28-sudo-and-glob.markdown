---
layout: post
title: "sudo and glob"
date: 2015-02-28 16:52
comments: true
categories: shell glob sudo 
---

Files are there but I cannot delete them

        $ sudo ls /etc/sensu/conf.d/handlers
        email.json  handler.json  hipchat.json

        $ sudo rm /etc/sensu/conf.d/handlers/*.json
        rm: cannot remove ‘/etc/sensu/conf.d/handlers/*.json’: No such file or directory

It is because my current login has no permission to read `/etc/sensu/conf.d/handlers` and so glob failed

This takes care of the problem:

        $ sudo bash -c 'rm /etc/sensu/conf.d/handlers/*.json'

