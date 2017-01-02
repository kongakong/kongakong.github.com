---
layout: post
title: "emacs on osx"
date: 2015-03-08 12:01
comments: true
categories: emacs osx
---

Trying out emacs from brew. Here is the output:

        $ brew install emacs
        ==> Downloading https://homebrew.bintray.com/bottles/emacs-24.4.yosemite.bottle.3.tar.gz
        ######################################################################## 100.0%
        ==> Pouring emacs-24.4.yosemite.bottle.3.tar.gz
        ==> Caveats
        To have launchd start emacs at login:
            ln -sfv /usr/local/opt/emacs/*.plist ~/Library/LaunchAgents
        Then to load emacs now:
            launchctl load ~/Library/LaunchAgents/homebrew.mxcl.emacs.plist
        ==> Summary
        🍺  /usr/local/Cellar/emacs/24.4: 3914 files, 104M
