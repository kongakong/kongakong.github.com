---
layout: post
title: "keep vi swp file in tmp"
date: 2013-06-29 21:02
comments: true
categories: vi octopress  
---

``vi`` is my editor of choice when I need to do some quick editing.   

When vi edits a file, it will usally create a `swp` file for recovery purpose. Usually it causes no problem.

But apparently octopress does not work when there is temporry file in the `post` directory. Rake will emit 

```
rake aborted!
No such file or directory - public/_posts/.2013-06-29-example.markdown.swp
```

and then bailed.

I added 
```
set backupdir=~/tmp
```
to my .vimrc. Hopefully it will prevent this problem from happening again.


