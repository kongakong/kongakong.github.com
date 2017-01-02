---
layout: post
title: "install mirage failed"
date: 2014-07-06 21:26
comments: true
categories: 
---

{% codeblock %}
[ERROR] Due to some errors while processing optcomp.1.6, the following actions will NOT proceed:
 - install mirage.1.1.3
 - install ocplib-endian.0.7
 - install io-page.1.1.1
 - install mirage-types.1.1.3
 - install cstruct.1.3.0

===== ERROR while installing optcomp.1.6 =====
Could not get the source for optcomp.1.6:
# opam-version    1.1.1
# os              linux
Cannot download https://opam.ocaml.org/archives/optcomp.1.6+opam.tar.gz, please check your connection settings.

The former state can be restored with opam switch import -f "/home/antkong/.opam/system/backup/state-20140606112154.export"
'opam install mirage' failed.

{% endcodeblock %}
