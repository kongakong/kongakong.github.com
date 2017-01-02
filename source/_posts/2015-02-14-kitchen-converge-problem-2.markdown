---
layout: post
title: "kitchen converge problem 2"
date: 2015-02-14 15:07
comments: true
categories: 
---

Trying the `kitchen` command again, and I am still getting error messages


        $ kitchen converge
        -----> Starting Kitchen (v1.3.1)
        -----> Creating <default-ubuntu-1204>...
               Bringing machine 'default' up with 'virtualbox' provider...
               The following berks command failed to execute:

                   /Users/antkong/.rvm/gems/ruby-2.2.0/bin/berks --version --format json

               The stdout and stderr are shown below:

I probably have installed chefdk when the system ruby is active. 

So `rvm use system` works for me
