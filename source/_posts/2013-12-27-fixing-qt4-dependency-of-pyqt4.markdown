---
layout: post
title: "Fixing qt4 dependency of pyqt4"
date: 2013-12-27 22:57
comments: true
categories: enaml qt4 pyqt osx 
---

SIP is installed

PyQt needs qt4. ``brew install qt4`` takes care of this dependency.

PyQt cannot be installed by either ``easy_install`` or ``pip``. I have to download the package, run ``configure.py`` and then ``make`` and ``make install``
