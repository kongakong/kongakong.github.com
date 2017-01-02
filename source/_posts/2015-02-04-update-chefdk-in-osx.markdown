---
layout: post
title: "Update ChefDK in OSX"
date: 2015-02-04 09:08
comments: true
categories: chef
---

A new version of ChefDK 0.4.0 has been released. I did an upgrade via `brew cask`


        $ brew update
        ...
        $ brew cask install --force chefdk
        ==> Downloading https://opscode-omnibus-packages.s3.amazonaws.com/mac_os_x/10.8/x86_64/chefdk-0.4.0-1.dmg
        ######################################################################## 100.0%
        ==> Running installer for chefdk; your password may be necessary.
        ==> Package installers may write to any location; options such as --appdir are ignored.
        Password:
        ==> installer: Package name is Chef Development Kit
        ==> installer: Upgrading at base path /
        ==> installer: The upgrade was successful.
        🍺  chefdk staged at '/opt/homebrew-cask/Caskroom/chefdk/0.4.0-1' (6 files, 99M)
