---
layout: post
title: "How to identify and kill process spawned by a tmux session?"
date: 2015-03-02 19:49
comments: true
categories: tmux ps
---

An app is not responding in one of the pane of my tmux session. It does not respond to any Ctl-C and I forgot what the process is it.

So I did the following to identify the process: 


        $ tmux list-panes -s -F "#{pane_pid} #{pane_current_command}"
        1896 tmux
        1899 ssh
        $ pstree 1899  # Problem at the lower pane
        -+= 01899 antkong -zsh
         \--= 65662 antkong ssh -i prod.pem ubuntu@localhost -p 2222

Then run `kill -9 1899` to kill it
