---
layout: post
title: "Lesson from learning to use vagrant, chef and sensu"
date: 2015-03-02 09:16
comments: true
categories: vagrant **chef** sensu
---

Couple of weeks ago I set out to learn to use vagrant + **chef** + sensu to achieve the goal of automated data server deployment and server monitoring.

I would like to share my experience so new comers can get up to speed faster and avoid some time-wasters. 

The structure of this post can be confusing because it is more like my cliff note.

## Background of my final chioces

A small startup that uses aws ec2 for key functionality. The tools should cost as little as possible. Open source solution is prefered.

## What are the advantages of vagrant, chef and sensu?

**Vagrant** and **chef** are great tools. They are indispensable to automation of VM creation and provision.

**Sensu** is an open source monitoring platform. It is very flexible because it uses ruby to develop plugins to extend the framework's capability.

All of them have strong momentum from their communities

## Learning Vagrant

### Vagrantfile

**Vagrant** is actually rather easy to master. The key file **Vagrantfile** is by itself a ruby script. It allows a lot of flexibility of customisation. The key hurdle is to write up a **Vagrantfile** that suits your need. The default **Vagrantfile** is pretty useless.

### Know your override

You will need to know how to use the `override` object to customise your vagrant settings

### Provider

A limitation of vagrant as of 1.6.x is that you can only use one active provider at a time. It means that if you have `vagrant up` to Virtualbox, you cannot fire up another instance in aws in the same folder. You can remove the '.vagrant' folder if you must.

### Provisioner

My choice of provisioner is **chef**. I choose it over **puppet** mainly because of **chef** uses ruby as the scripting lanagage. `Nagios` is bascailly out of the question due to its legacy and complexity. Unfortunately there was a lot of changes at **chef** in last couple of months and it makes the learning experience less than pleasant. More on **chef** later.

### Plugins

If your primary platform is aws, you will need to install `vagrant-aws`. There are a lot of useful plugins and it is something one should explore to discover all sort of possibility.

You will also need `vagrant-chef-zero`, `vagrant-omnibus` and `vagrant-berkshelf` in order to work with chef.

## Learning Chef

### Implementation

My goal is to make my **chef** cookbook and deployment as self-contained as possible.

### Lack of good documentation and Conflicting opinions abound

I were unable to find a single starting point and clear documentation to learn **chef** on the official website. The documentation are either very fragmented or not up to date. The biggest distraction is the use of **knife**. It is tightly coupled with **chef** server. However in my opinion the power of **chef** actually lies with the concept of `cookbook`. 

Apparently **chef** has released a number of tools before to help with devops' jobs. 

The main tool, **knife**, confuses me because 

1. I want to run **chef** in a standalone mode and knife assumes you are using chef server

2. Some function like data bag creation is not useful

**Librarian** is superceded by **berkshelf**. Especially if you are going to use vagrant with chef, the brekshelf will take care of all the cookbook dependency automagically. Don't bother with **libraian**.  

I think the book "Learning Chef" by Mischa Taylor is by far the most systemic and easy to read book in the subject area. If I have discovered this book at the begining I am sure I will save at least a week time in research.

### Confusing terminology

[LWRP](https://docs.chef.io/lwrp.html) What the heck is it? 

The document makes sense after I have used LWRP. However the document, like many other chef document, cannot give you a context or a big picture.

### Confusing branding

Maybe I start at the wrong time? Last couple of months **chef** has been changing their urls. e.g. getchef.com becomes chef.io

And recipe respository is here: https://supermarket.chef.io  and it is not linked from chef's main website.

Then they are also changing their github repository from `opcodes` to `chef` 

Utterly confusing to anyone who just started during this period.

### How to approach cookbook?

I think cookbook is the best feature of chef, but it is not very adequately explained.

That's why you need to get your hand dirty and learn how to write your cookbook by using **kitchen**

At the beginning I thought I can get away from writing custom cookbook. I now see it as an impossibility.

### Keep converge until you get it

Use **kitchen** to create a cookbook skeleton. Start write up your recipes.

**Tip**: Break down your provisioning requirement into logical units and make them as self-contained and small and possible. In this way, you can test each individual recipe quickly with `kitchen converge`.

When you are happy with all the recipes, do the final integration test by running up the chef provision with **vagrant**.

### Sensu

More on sensu later... To be continued






 

