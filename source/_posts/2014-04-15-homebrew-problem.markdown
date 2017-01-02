---
layout: post
title: "homebrew problem"
date: 2014-04-15 17:32
comments: true
categories: osx homebrew
---
Homebrew error message due to incomplete installation of XCode

{% codeblock %}

$ ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
==> This script will install:
/usr/local/bin/brew
/usr/local/Library/...
/usr/local/share/man/man1/brew.1

Press RETURN to continue or any other key to abort
==> /usr/bin/sudo /bin/mkdir /usr/local

WARNING: Improper use of the sudo command could lead to data loss
or the deletion of important system files. Please double-check your
typing when using sudo. Type "man sudo" for more information.

To proceed, enter your password, or type Ctrl-C to abort.

Password:
==> /usr/bin/sudo /bin/chmod g+rwx /usr/local
==> /usr/bin/sudo /usr/bin/chgrp admin /usr/local
==> /usr/bin/sudo /bin/mkdir /Library/Caches/Homebrew
==> /usr/bin/sudo /bin/chmod g+rwx /Library/Caches/Homebrew
==> Installing the Command Line Tools (expect a GUI popup):
==> /usr/bin/sudo /usr/bin/xcode-select --install
xcode-select: note: install requested for command line developer tools
Press any key when the installation has completed.
==> Downloading and installing Homebrew...
remote: Counting objects: 166311, done.
remote: Compressing objects: 100% (46739/46739), done.
Receiving objects:  76% (126773/166311), 23.62 MiB | 83.00 KiB/s    
error: RPC failed; result=56, HTTP code = 200
fatal: The remote end hung up unexpectedly
fatal: early EOF
fatal: index-pack failed
Failed during: git fetch origin master:refs/remotes/origin/master -n
$ ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
It appears Homebrew is already installed. If your intent is to reinstall you
should do the following before running this installer again:
    rm -rf /usr/local/Cellar /usr/local/.git && brew cleanup

{% endcodeblock %}
