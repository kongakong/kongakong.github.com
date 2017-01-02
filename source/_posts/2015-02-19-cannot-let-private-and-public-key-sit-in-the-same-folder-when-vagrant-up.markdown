---
layout: post
title: "Don't let private and public key sit in the same folder when vagrant up"
date: 2015-02-19 16:39
comments: true
categories: vagrant 
---

The problem is this: 

**`vagrant` failed to provision a box after it is successfully created in aws ec2.**

It reported:

         INFO ssh: SSH not up: #<Vagrant::Errors::SSHAuthenticationFailed: SSH authentication failed! This is typically caused by the public/private
         keypair for the SSH user not being properly set on the guest VM. Please
         verify that the guest VM is setup with the proper public key, and that
         the private key path for Vagrant is setup properly as well.>

But if I do `vagrant ssh` I can login to the box with no problem.

I have tried everything to get it to work. I have removed `rvm`, I have reinstalled `chefdk`, I have downgraded `vagrant`... None of them work.

I studied the log message a bit closer and I found these lines:


         769 D, [2015-02-19T15:05:43.563478 #14537] DEBUG -- net.ssh.authentication.session[851208b0]: allowed methods: publickey
         770 D, [2015-02-19T15:05:43.563564 #14537] DEBUG -- net.ssh.authentication.methods.none[85125400]: none failed
         771 D, [2015-02-19T15:05:43.563650 #14537] DEBUG -- net.ssh.authentication.session[851208b0]: trying publickey
         772 E, [2015-02-19T15:05:43.564057 #14537] ERROR -- net.ssh.authentication.key_manager[851256d0]: could not load public key file `/Users/antkong/dev/project/aws/aws-ami.pem': Net::SSH::Exception (public key at /Users/antkong/dev/project/aws/aws-ami.pem.pub is not valid)


Apparently for some reason the key manager picked the public key file to connect to the server: I have specified a private key file in the `Vagrantfile`. The key manager added '.pub' to the file name and pick the file up.

Removing the public key file solved the issue.

**Lesson**: Don't put the public key along with the private key.
