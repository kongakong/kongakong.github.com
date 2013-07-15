---
layout: post
title: "A useful Sybase tool"
date: 2013-07-15 23:08
comments: true
categories: sybase
---

`defncopy` is possibly the best way to retrieve a script of any Sybase database objects if you do not have access to a decent database development tools such as [Aqua Data Studio](http://www.aquafold.com/aquadatastudio.html)

This utility comes with Sybase distribution. Here is its usage:

```
$ defncopy
 
defncopy Syntax Error
Usage: defncopy
    [-v]
    [-W]
    [-X]
    [-a <display_charset>]
    [-I <interfaces_file>]
    [-J [<client_charset>]]
    [-K <keytab_file>]
    [-P <password>]
    [-R <remote_server_principal>]
    [-S [<server_name>]]
    [-U <user_name>]
    [-V <security_options>]
    [-Z <security_mechanism>]
    [-z <language>]
    { in <file_name> <database_name> |
      out <file_name> <database_name> [<owner>.]<object_name>
          [[<owner>.]<object_name>...] }

```

