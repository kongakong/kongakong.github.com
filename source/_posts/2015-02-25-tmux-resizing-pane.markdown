---
layout: post
title: "tmux resizing pane"
date: 2015-02-25 01:20
comments: true
categories: tmux zsh osx
---

I want to increase a height of a pane in a tmux session. I tried 'C-b C-<Up>', but since my C-<UP> is binded to expose in OSX, it did not work.

Fortunately it is very easy to control the behavior via command line. First of all, you need to identify the pane. It can be done either by a 'C-b q' or by command `tmux list-panes`. The pane from which you issued the command will be marked as `active`.

Once the id of the pane is identified, you can run the following command:

       tmux resize-pane -t 1 -U    # 1 is the pane id 
