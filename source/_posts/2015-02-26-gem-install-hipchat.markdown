---
layout: post
title: "gem install hipchat problem"
date: 2015-02-26 22:45
comments: true
categories: gem hipchat json
---

        Fetching: json-1.8.2.gem (100%)
        Building native extensions.  This could take a while...
        ERROR:  Error installing hipchat:
                ERROR: Failed to build gem native extension.

            /opt/sensu/embedded/bin/ruby extconf.rb
        creating Makefile

        make "DESTDIR="
        compiling generator.c
        make: gcc: Command not found
        make: *** [generator.o] Error 127


        Gem files will remain installed in /opt/sensu/embedded/lib/ruby/gems/2.0.0/gems/json-1.8.2 for inspection.
        Results logged to /opt/sensu/embedded/lib/ruby/gems/2.0.0/gems/json-1.8.2/ext/json/ext/generator/gem_make.out

