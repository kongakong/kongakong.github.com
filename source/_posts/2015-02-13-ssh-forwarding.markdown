---
layout: post
title: "ssh forwarding in vagrant and private github repository"
date: 2015-02-13 16:23
comments: true
categories: github vagrant
---

It is how to checkout git private repository from within a VM without leaving a key in the VM

First in host OS (Mac OSX in my case), run 

    ssd-add /path/to/githubkey

In the `.ssh/config`, add these lines:

        Host           github
        HostName       github.com
        IdentityFile   /path/to/githubkey

Then enable port forwarding in vagrant VM

    Vagrant.configure("2") do |config|
      config.ssh.forward_agent = true


After you have run `vagrant up`, you can test the connection in the VM by running

    ssh -T git@github.com


