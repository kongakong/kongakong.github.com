---
layout: post
title: "trying packer"
date: 2015-03-08 20:10
comments: true
categories: packer
---

Trying to use packer to build a box for the first time. Encounter permission problem

        $  packer build -var 'aws_access_key=ABC' -var 'aws_secret_key=XYZ' my-basebox.json
        amazon-ebs output will be in this color.

        ==> amazon-ebs: Inspecting the source AMI...
        ==> amazon-ebs: Creating temporary keypair: packer 54fc1177-7d3f-51fe-03ea-f16fea52ec2d
        ==> amazon-ebs: Creating temporary security group for this instance...
        ==> amazon-ebs: Authorizing SSH access on the temporary security group...
        ==> amazon-ebs: Launching a source AWS instance...
            amazon-ebs: Instance ID: i-ead72be7
        ==> amazon-ebs: Waiting for instance (i-ead72be7) to become ready...
        ==> amazon-ebs: Waiting for SSH to become available...
        ==> amazon-ebs: Connected to SSH!
        ==> amazon-ebs: Provisioning with chef-solo
            amazon-ebs: Installing Chef...
            amazon-ebs: % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
            amazon-ebs: Dload  Upload   Total   Spent    Left  Speed
            amazon-ebs: 100 18378  100 18378    0     0  48243      0 --:--:-- --:--:-- --:--:-- 48363
            amazon-ebs: Downloading Chef  for ubuntu...
            amazon-ebs: downloading https://www.opscode.com/chef/metadata?v=&prerelease=false&nightlies=false&p=ubuntu&pv=14.04&m=x86_64
            amazon-ebs: to file /tmp/install.sh.1372/metadata.txt
            amazon-ebs: trying wget...
            amazon-ebs: url https://opscode-omnibus-packages.s3.amazonaws.com/ubuntu/13.04/x86_64/chef_12.1.0-1_amd64.deb
            amazon-ebs: md5 b86c3dd0171e896ab3fb42f26e688fef
            amazon-ebs: sha256  9bbde88f2eeb846a862512ab6385dff36278ff2ba8bd2e07a237a23337c4165a
            amazon-ebs: downloaded metadata file looks valid...
            amazon-ebs: downloading https://opscode-omnibus-packages.s3.amazonaws.com/ubuntu/13.04/x86_64/chef_12.1.0-1_amd64.deb
            amazon-ebs: to file /tmp/install.sh.1372/chef_12.1.0-1_amd64.deb
            amazon-ebs: trying wget...
            amazon-ebs: Comparing checksum with sha256sum...
            amazon-ebs: Installing Chef
            amazon-ebs: installing with dpkg...
            amazon-ebs: dpkg: error: requested operation requires superuser privilege
            amazon-ebs: Installation failed
            amazon-ebs: Version:
            amazon-ebs:
            amazon-ebs: Please file a Bug Report at https://github.com/opscode/opscode-omnitruck/issues/new
            amazon-ebs: Alternatively, feel free to open a Support Ticket at https://www.getchef.com/support/tickets
            amazon-ebs: More Chef support resources can be found at https://www.getchef.com/support
            amazon-ebs:
            amazon-ebs: Please include as many details about the problem as possible i.e., how to reproduce
            amazon-ebs: the problem (if possible), type of the Operating System and its version, etc.,
            amazon-ebs: and any other relevant details that might help us with troubleshooting.
            amazon-ebs:
        ==> amazon-ebs: Terminating the source AWS instance...
        ==> amazon-ebs: Deleting temporary security group...
        ==> amazon-ebs: Deleting temporary keypair...
        Build 'amazon-ebs' errored: Error installing Chef: Install script exited with non-zero exit status 1

        ==> Some builds didn't complete successfully and had errors:
        --> amazon-ebs: Error installing Chef: Install script exited with non-zero exit status 1

        ==> Builds finished but no artifacts were created.

Check the following:

1. `prevent_sudo` is not set to true
2. If `install_command` and `execute_command` are set, make sure they use `sudo`
