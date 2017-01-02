---
layout: post
title: "cannot remove file"
date: 2015-02-26 21:36
comments: true
categories: 
---

Why I cannot remove this file redis_output.rb?

        ~/d/z/a/v/c/z/f/d/s/e/handlers git:1685/setup-sensu-server-via-vagrant ❯❯❯ ls -l                                                                      ✭ ✖ ✱ ◼
        total 56
        -rwxr-xr-x  1 antkong  staff   2858 25 Feb 10:40 flapjack.rb
        -rwxr-xr-x  1 antkong  staff  11068 25 Feb 10:40 hipchat.rb
        -rw-r--r--  1 antkong  staff    941 25 Feb 10:40 redis_output.rb
        -rwxr-xr-x  1 antkong  staff   4594 25 Feb 10:40 ttl.rb
        ~/d/z/a/v/c/z/f/d/s/e/handlers git:1685/setup-sensu-server-via-vagrant ❯❯❯ git rm redis_output.rb                                                   ⏎ ✭ ✖ ✱ ◼
        fatal: pathspec 'redis_output.rb' did not match any files

        fatal: pathspec 'redis_output.rb' did not match any files
        ~/d/z/a/v/c/z/f/d/s/e/handlers git:1685/setup-sensu-server-via-vagrant ❯❯❯ git rm redis*.rb                                                         ⏎ ✭ ✖ ✱ ◼
        fatal: pathspec 'redis_output.rb' did not match any files

It is because I made a wrong assumpiton: the file is not under source control yet.
