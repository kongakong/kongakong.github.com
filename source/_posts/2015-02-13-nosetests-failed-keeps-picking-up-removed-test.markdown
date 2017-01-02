---
layout: post
title: "nosetests --failed keeps picking up removed test"
date: 2015-02-13 11:38
comments: true
categories: nosetests 
---

When I run 

    nosetests -v --failed

I keep getting this exception:

        #40 Failure: ImportError (No module named test_share_link2) ... ERROR

        ======================================================================
        ERROR: Failure: ImportError (No module named test_share_link2)
        ----------------------------------------------------------------------
        Traceback (most recent call last):
          File "/Users/antkong/dev/project/project-ve/lib/python2.7/site-packages/nose/loader.py", line 414, in loadTestsFromName
            addr.filename, addr.module)
          File "/Users/antkong/dev/project/project-ve/lib/python2.7/site-packages/nose/importer.py", line 47, in importFromPath
            return self.importFromDir(dir_path, fqname)
          File "/Users/antkong/dev/project/project-ve/lib/python2.7/site-packages/nose/importer.py", line 79, in importFromDir
            fh, filename, desc = find_module(part, path)
        ImportError: No module named test_share_link2

But I have already removed this test including both py and pyc files. Why nosetests keeps picking up this test?

It turns out I need to remove the `.noseids` file. It contains a stale reference to the removed file
