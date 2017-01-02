---
layout: post
title: "How to install pygame in osx"
date: 2013-12-04 22:52
comments: true
categories: osx maverick pygame python pip brew
---

These are steps for installing pygame into OSX Maverick

- `brew install sdl sdl_image sdl_mixer sdl_ttf  portmidi `

- Download and install `XQuartz`. It is a dependency of package `smpeg`

- Install `smpeg` 

{% codeblock %}
brew tap homebrew/headonly
brew install --HEAD smpeg
{% endcodeblock %}

- Use pip to install pygame: `pip install hg+http://bitbucket.org/pygame/pygame`

- Use `python -m pygame.tests` for test

(This is based on the bug report [here](https://bitbucket.org/pygame/pygame/issue/82/homebrew-on-leopard-fails-to-install)) 

