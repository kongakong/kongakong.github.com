---
layout: post
title: "octopress deploy rejected"
date: 2014-03-22 22:07
comments: true
categories: octopress git
---

Got this error when running 'rake deploy'

{% codeblock %}

## Pushing generated _deploy website
Counting objects: 9767, done.
Delta compression using up to 4 threads.
Compressing objects: 100% (5297/5297), done.
Writing objects: 100% (7245/7245), 3.98 MiB | 121.00 KiB/s, done.
Total 7245 (delta 3406), reused 2619 (delta 423)
remote: error: GH001: Large files detected.
remote: error: Trace: 2cb44393c3f81f907b200d71379dc45c
remote: error: See http://git.io/iEPt8g for more information.
remote: error: File downloads/code/erlang/out3.log is 122.48 MB; this exceeds GitHub's file size limit of 100 MB
To git@github.com:kongakong/kongakong.github.com
 ! [remote rejected] master -> master (pre-receive hook declined)
error: failed to push some refs to 'git@github.com:kongakong/kongakong.github.com'

{% endcodeblock %}


It is because I have left a log file in the downloads/code folder. Although I did not check in the file, it is copied into the _deploy folder and get committed for deployment.

Here is a solution:

1) Make sure the unwanted file is removed

2) Add `*.log` to **.gitignore** to permanently ignore this file type.

3) Download [`bfg`](http://rtyley.github.io/bfg-repo-cleaner/) to remove the redundant, big files in the **_deploy** folder


Here is the partial output from `bfg`

{% codeblock %}

These are your protected commits, and so their contents will NOT be altered:

 * commit d8b90a41 (protected by 'HEAD')

Cleaning
--------

Found 910 commits
Cleaning commits:       100% (910/910)
Cleaning commits completed in 3,051 ms.

Updating 1 Ref
--------------

    Ref                 Before     After   
    ---------------------------------------
    refs/heads/master | d8b90a41 | 1c0ad187

Updating references:    100% (1/1)
...Ref update completed in 16 ms.

Commit Tree-Dirt History
------------------------

    Earliest                                              Latest
    |                                                          |
    ...........................................................D

    D = dirty commits (file tree fixed)
    m = modified commits (commit message or parents changed)
    . = clean commits (no changes to file tree)

                            Before     After   
    -------------------------------------------
    First modified commit | 6725709a | f2971f05
    Last dirty commit     | cbc09c38 | 774bb768


In total, 14 object ids were changed - a record of these will be written to:

    /Users/antkong/octopress/_deploy.bfg-report/2014-03-22T21-03/object-id-map.old-new.txt

BFG run is complete!

{% endcodeblock %}


4) Now you can run the `rake deploy` again

