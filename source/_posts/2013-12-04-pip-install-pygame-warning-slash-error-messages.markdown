---
layout: post
title: "pip install pygame warning/error messages"
date: 2013-12-04 22:46
comments: true
categories: osx python pygame 
---
{% codeblock %}

$ pip install hg+http://bitbucket.org/pygame/pygame
Downloading/unpacking hg+http://bitbucket.org/pygame/pygame
  Cloning hg http://bitbucket.org/pygame/pygame to /var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/pip-K_KWAI-build
warning: bitbucket.org certificate with fingerprint 24:9c:45:8b:9c:aa:ba:55:4e:01:6d:58:ff:e4:28:7d:2a:14:ae:3b not verified (check hostfingerprints or web.cacerts config setting)
  Running setup.py egg_info for package from hg+http://bitbucket.org/pygame/pygame
    
    
    WARNING, No "Setup" File Exists, Running "config.py"
    Using Darwin configuration...
    
    Hunting dependencies...
    SDL     : found 1.2.15
    Framework SDL not found
    FONT    : found
    Framework SDL_ttf not found
    IMAGE   : found
    Framework SDL_image not found
    MIXER   : found
    Framework SDL_mixer not found
    SMPEG   : found 0.4.5
    Framework smpeg not found
    Framework CoreMIDI found
    Framework QuickTime found
    PNG     : found
    JPEG    : found
    SCRAP   : not found
    PORTMIDI: found
    FREETYPE: found 2.5.0
    AVFORMAT: not found
    SWSCALE : not found
    
    If you get compiler errors during install, doublecheck
    the compiler flags in the "Setup" file.
    
    
    Continuing With "setup.py"
    
    no previously-included directories found matching '*/CVS'
    no previously-included directories found matching '*/*/CVS'
Installing collected packages: pygame
  Running setup.py install for pygame
    building 'pygame.imageext' extension
    clang -fno-strict-aliasing -fno-common -dynamic -I/usr/local/include -I/usr/local/opt/sqlite/include -DNDEBUG -g -fwrapv -O3 -Wall -Wstrict-prototypes -Ddarwin -D_THREAD_SAFE -DENABLE_NEWBUF=1 -I/usr/X11R6/include -I/usr/local/include/SDL -I/usr/local/include/SDL -I/usr/X11/include -I/usr/local/include -I/usr/local/Cellar/python/2.7.6/Frameworks/Python.framework/Versions/2.7/include/python2.7 -c src/imageext.c -o build/temp.macosx-10.9-x86_64-2.7/src/imageext.o
    clang -bundle -undefined dynamic_lookup -L/usr/local/lib -L/usr/local/opt/sqlite/lib build/temp.macosx-10.9-x86_64-2.7/src/imageext.o -L/usr/local/lib -L/usr/local/lib -L/usr/X11/lib -L/usr/local/lib -lSDLmain -lSDL -lSDL_image -lpng -ljpeg -o build/lib.macosx-10.9-x86_64-2.7/pygame/imageext.so -Wl,-framework,Cocoa
    building 'pygame.font' extension
    clang -fno-strict-aliasing -fno-common -dynamic -I/usr/local/include -I/usr/local/opt/sqlite/include -DNDEBUG -g -fwrapv -O3 -Wall -Wstrict-prototypes -Ddarwin -D_THREAD_SAFE -DENABLE_NEWBUF=1 -I/usr/X11R6/include -I/usr/local/include/SDL -I/usr/local/include/SDL -I/usr/local/Cellar/python/2.7.6/Frameworks/Python.framework/Versions/2.7/include/python2.7 -c src/font.c -o build/temp.macosx-10.9-x86_64-2.7/src/font.o
    clang -bundle -undefined dynamic_lookup -L/usr/local/lib -L/usr/local/opt/sqlite/lib build/temp.macosx-10.9-x86_64-2.7/src/font.o -L/usr/local/lib -L/usr/local/lib -lSDLmain -lSDL -lSDL_ttf -o build/lib.macosx-10.9-x86_64-2.7/pygame/font.so -Wl,-framework,Cocoa
    building 'pygame.mixer' extension
    clang -fno-strict-aliasing -fno-common -dynamic -I/usr/local/include -I/usr/local/opt/sqlite/include -DNDEBUG -g -fwrapv -O3 -Wall -Wstrict-prototypes -Ddarwin -D_THREAD_SAFE -DENABLE_NEWBUF=1 -I/usr/X11R6/include -I/usr/local/include/SDL -I/usr/local/include/SDL -I/usr/local/Cellar/python/2.7.6/Frameworks/Python.framework/Versions/2.7/include/python2.7 -c src/mixer.c -o build/temp.macosx-10.9-x86_64-2.7/src/mixer.o
    clang -bundle -undefined dynamic_lookup -L/usr/local/lib -L/usr/local/opt/sqlite/lib build/temp.macosx-10.9-x86_64-2.7/src/mixer.o -L/usr/local/lib -L/usr/local/lib -lSDLmain -lSDL -lSDL_mixer -o build/lib.macosx-10.9-x86_64-2.7/pygame/mixer.so -Wl,-framework,Cocoa
    building 'pygame.mixer_music' extension
    clang -fno-strict-aliasing -fno-common -dynamic -I/usr/local/include -I/usr/local/opt/sqlite/include -DNDEBUG -g -fwrapv -O3 -Wall -Wstrict-prototypes -Ddarwin -D_THREAD_SAFE -DENABLE_NEWBUF=1 -I/usr/X11R6/include -I/usr/local/include/SDL -I/usr/local/include/SDL -I/usr/local/Cellar/python/2.7.6/Frameworks/Python.framework/Versions/2.7/include/python2.7 -c src/music.c -o build/temp.macosx-10.9-x86_64-2.7/src/music.o
    src/music.c:406:17: warning: explicitly assigning a variable of type 'Mix_Music *' (aka 'struct _Mix_Music *') to itself [-Wself-assign]
        queue_music = queue_music;
        ~~~~~~~~~~~ ^ ~~~~~~~~~~~
    1 warning generated.
    clang -bundle -undefined dynamic_lookup -L/usr/local/lib -L/usr/local/opt/sqlite/lib build/temp.macosx-10.9-x86_64-2.7/src/music.o -L/usr/local/lib -L/usr/local/lib -lSDLmain -lSDL -lSDL_mixer -o build/lib.macosx-10.9-x86_64-2.7/pygame/mixer_music.so -Wl,-framework,Cocoa
    building 'pygame._numericsurfarray' extension
    clang -fno-strict-aliasing -fno-common -dynamic -I/usr/local/include -I/usr/local/opt/sqlite/include -DNDEBUG -g -fwrapv -O3 -Wall -Wstrict-prototypes -Ddarwin -D_THREAD_SAFE -DENABLE_NEWBUF=1 -I/usr/X11R6/include -I/usr/local/include/SDL -I/usr/local/Cellar/python/2.7.6/Frameworks/Python.framework/Versions/2.7/include/python2.7 -c src/_numericsurfarray.c -o build/temp.macosx-10.9-x86_64-2.7/src/_numericsurfarray.o
    clang -bundle -undefined dynamic_lookup -L/usr/local/lib -L/usr/local/opt/sqlite/lib build/temp.macosx-10.9-x86_64-2.7/src/_numericsurfarray.o -L/usr/local/lib -lSDLmain -lSDL -o build/lib.macosx-10.9-x86_64-2.7/pygame/_numericsurfarray.so -Wl,-framework,Cocoa
    building 'pygame._numericsndarray' extension
    clang -fno-strict-aliasing -fno-common -dynamic -I/usr/local/include -I/usr/local/opt/sqlite/include -DNDEBUG -g -fwrapv -O3 -Wall -Wstrict-prototypes -Ddarwin -D_THREAD_SAFE -DENABLE_NEWBUF=1 -I/usr/X11R6/include -I/usr/local/include/SDL -I/usr/local/include/SDL -I/usr/local/Cellar/python/2.7.6/Frameworks/Python.framework/Versions/2.7/include/python2.7 -c src/_numericsndarray.c -o build/temp.macosx-10.9-x86_64-2.7/src/_numericsndarray.o
    clang -bundle -undefined dynamic_lookup -L/usr/local/lib -L/usr/local/opt/sqlite/lib build/temp.macosx-10.9-x86_64-2.7/src/_numericsndarray.o -L/usr/local/lib -L/usr/local/lib -lSDLmain -lSDL -lSDL_mixer -o build/lib.macosx-10.9-x86_64-2.7/pygame/_numericsndarray.so -Wl,-framework,Cocoa
    building 'pygame.pypm' extension
    clang -fno-strict-aliasing -fno-common -dynamic -I/usr/local/include -I/usr/local/opt/sqlite/include -DNDEBUG -g -fwrapv -O3 -Wall -Wstrict-prototypes -Ddarwin -D_THREAD_SAFE -DENABLE_NEWBUF=1 -I/usr/X11R6/include -I/usr/local/include/SDL -I/usr/local/include -I/System/Library/Frameworks/CoreMIDI.framework/Versions/Current/Headers -I/usr/local/Cellar/python/2.7.6/Frameworks/Python.framework/Versions/2.7/include/python2.7 -c src/pypm.c -o build/temp.macosx-10.9-x86_64-2.7/src/pypm.o
    src/pypm.c:664:14: warning: explicitly assigning a variable of type 'PyObject *' (aka 'struct _object *') to itself [-Wself-assign]
      __pyx_self = __pyx_self;
      ~~~~~~~~~~ ^ ~~~~~~~~~~
    src/pypm.c:703:14: warning: explicitly assigning a variable of type 'PyObject *' (aka 'struct _object *') to itself [-Wself-assign]
      __pyx_self = __pyx_self;
      ~~~~~~~~~~ ^ ~~~~~~~~~~
    src/pypm.c:734:14: warning: explicitly assigning a variable of type 'PyObject *' (aka 'struct _object *') to itself [-Wself-assign]
      __pyx_self = __pyx_self;
      ~~~~~~~~~~ ^ ~~~~~~~~~~
    src/pypm.c:776:14: warning: explicitly assigning a variable of type 'PyObject *' (aka 'struct _object *') to itself [-Wself-assign]
      __pyx_self = __pyx_self;
      ~~~~~~~~~~ ^ ~~~~~~~~~~
    src/pypm.c:818:14: warning: explicitly assigning a variable of type 'PyObject *' (aka 'struct _object *') to itself [-Wself-assign]
      __pyx_self = __pyx_self;
      ~~~~~~~~~~ ^ ~~~~~~~~~~
    src/pypm.c:868:14: warning: explicitly assigning a variable of type 'PyObject *' (aka 'struct _object *') to itself [-Wself-assign]
      __pyx_self = __pyx_self;
      ~~~~~~~~~~ ^ ~~~~~~~~~~
    src/pypm.c:963:14: warning: explicitly assigning a variable of type 'PyObject *' (aka 'struct _object *') to itself [-Wself-assign]
      __pyx_self = __pyx_self;
      ~~~~~~~~~~ ^ ~~~~~~~~~~
    src/pypm.c:1006:14: warning: explicitly assigning a variable of type 'PyObject *' (aka 'struct _object *') to itself [-Wself-assign]
      __pyx_self = __pyx_self;
      ~~~~~~~~~~ ^ ~~~~~~~~~~
    src/pypm.c:1050:14: warning: explicitly assigning a variable of type 'PyObject *' (aka 'struct _object *') to itself [-Wself-assign]
      __pyx_self = __pyx_self;
      ~~~~~~~~~~ ^ ~~~~~~~~~~
    src/pypm.c:1091:13: warning: unused variable '__pyx_doc_4pypm_6Output___init__' [-Wunused-variable]
    static char __pyx_doc_4pypm_6Output___init__[] = "Instantiate MIDI output stream object.";
                ^
    src/pypm.c:1359:13: warning: unused variable '__pyx_doc_4pypm_6Output___dealloc__' [-Wunused-variable]
    static char __pyx_doc_4pypm_6Output___dealloc__[] = "Close midi device if still open when the instance is destroyed.";
                ^
    src/pypm.c:2673:13: warning: unused variable '__pyx_doc_4pypm_5Input___init__' [-Wunused-variable]
    static char __pyx_doc_4pypm_5Input___init__[] = "Instantiate MIDI input stream object.";
                ^
    src/pypm.c:2845:13: warning: unused variable '__pyx_doc_4pypm_5Input___dealloc__' [-Wunused-variable]
    static char __pyx_doc_4pypm_5Input___dealloc__[] = "Close midi device if still open when the instance is destroyed.";
                ^
    13 warnings generated.
    clang -bundle -undefined dynamic_lookup -L/usr/local/lib -L/usr/local/opt/sqlite/lib build/temp.macosx-10.9-x86_64-2.7/src/pypm.o -L/usr/local/lib -L/usr/local/lib -lSDLmain -lSDL -lportmidi -o build/lib.macosx-10.9-x86_64-2.7/pygame/pypm.so -Wl,-framework,Cocoa -framework CoreMIDI -F/System/Library/Frameworks/
    building 'pygame.gfxdraw' extension
    clang -fno-strict-aliasing -fno-common -dynamic -I/usr/local/include -I/usr/local/opt/sqlite/include -DNDEBUG -g -fwrapv -O3 -Wall -Wstrict-prototypes -Ddarwin -D_THREAD_SAFE -DENABLE_NEWBUF=1 -I/usr/X11R6/include -I/usr/local/include/SDL -I/usr/local/Cellar/python/2.7.6/Frameworks/Python.framework/Versions/2.7/include/python2.7 -c src/gfxdraw.c -o build/temp.macosx-10.9-x86_64-2.7/src/gfxdraw.o
    clang -fno-strict-aliasing -fno-common -dynamic -I/usr/local/include -I/usr/local/opt/sqlite/include -DNDEBUG -g -fwrapv -O3 -Wall -Wstrict-prototypes -Ddarwin -D_THREAD_SAFE -DENABLE_NEWBUF=1 -I/usr/X11R6/include -I/usr/local/include/SDL -I/usr/local/Cellar/python/2.7.6/Frameworks/Python.framework/Versions/2.7/include/python2.7 -c src/SDL_gfx/SDL_gfxPrimitives.c -o build/temp.macosx-10.9-x86_64-2.7/src/SDL_gfx/SDL_gfxPrimitives.o
    src/SDL_gfx/SDL_gfxPrimitives.c:5851:15: warning: unused variable 'rotatedCharacter' [-Wunused-variable]
            SDL_Surface *rotatedCharacter;
                         ^
    src/SDL_gfx/SDL_gfxPrimitives.c:6521:25: warning: passing 'Uint16 [4]' to parameter of type 'const Sint16 *' (aka 'const short *') converts between pointers to integer types with different sign [-Wpointer-sign]
                            polygonColor(m->dst, px, py, 4, m->color);
                                                 ^~
    src/SDL_gfx/SDL_gfxPrimitives.c:4917:52: note: passing argument to parameter 'vx' here
    int polygonColor(SDL_Surface * dst, const Sint16 * vx, const Sint16 * vy, int n, Uint32 color)
                                                       ^
    src/SDL_gfx/SDL_gfxPrimitives.c:6521:29: warning: passing 'Uint16 [4]' to parameter of type 'const Sint16 *' (aka 'const short *') converts between pointers to integer types with different sign [-Wpointer-sign]
                            polygonColor(m->dst, px, py, 4, m->color);
                                                     ^~
    src/SDL_gfx/SDL_gfxPrimitives.c:4917:71: note: passing argument to parameter 'vy' here
    int polygonColor(SDL_Surface * dst, const Sint16 * vx, const Sint16 * vy, int n, Uint32 color)
                                                                          ^
    3 warnings generated.
    clang -bundle -undefined dynamic_lookup -L/usr/local/lib -L/usr/local/opt/sqlite/lib build/temp.macosx-10.9-x86_64-2.7/src/gfxdraw.o build/temp.macosx-10.9-x86_64-2.7/src/SDL_gfx/SDL_gfxPrimitives.o -L/usr/local/lib -lSDLmain -lSDL -o build/lib.macosx-10.9-x86_64-2.7/pygame/gfxdraw.so -Wl,-framework,Cocoa
    building 'pygame._freetype' extension
    clang -fno-strict-aliasing -fno-common -dynamic -I/usr/local/include -I/usr/local/opt/sqlite/include -DNDEBUG -g -fwrapv -O3 -Wall -Wstrict-prototypes -Ddarwin -D_THREAD_SAFE -DENABLE_NEWBUF=1 -I/usr/X11R6/include -I/usr/local/include/SDL -I/opt/X11/include/freetype2 -I/opt/X11/include -I/usr/local/Cellar/python/2.7.6/Frameworks/Python.framework/Versions/2.7/include/python2.7 -c src/freetype/ft_cache.c -o build/temp.macosx-10.9-x86_64-2.7/src/freetype/ft_cache.o
    clang -fno-strict-aliasing -fno-common -dynamic -I/usr/local/include -I/usr/local/opt/sqlite/include -DNDEBUG -g -fwrapv -O3 -Wall -Wstrict-prototypes -Ddarwin -D_THREAD_SAFE -DENABLE_NEWBUF=1 -I/usr/X11R6/include -I/usr/local/include/SDL -I/opt/X11/include/freetype2 -I/opt/X11/include -I/usr/local/Cellar/python/2.7.6/Frameworks/Python.framework/Versions/2.7/include/python2.7 -c src/freetype/ft_wrap.c -o build/temp.macosx-10.9-x86_64-2.7/src/freetype/ft_wrap.o
    clang -fno-strict-aliasing -fno-common -dynamic -I/usr/local/include -I/usr/local/opt/sqlite/include -DNDEBUG -g -fwrapv -O3 -Wall -Wstrict-prototypes -Ddarwin -D_THREAD_SAFE -DENABLE_NEWBUF=1 -I/usr/X11R6/include -I/usr/local/include/SDL -I/opt/X11/include/freetype2 -I/opt/X11/include -I/usr/local/Cellar/python/2.7.6/Frameworks/Python.framework/Versions/2.7/include/python2.7 -c src/freetype/ft_render.c -o build/temp.macosx-10.9-x86_64-2.7/src/freetype/ft_render.o
    clang -fno-strict-aliasing -fno-common -dynamic -I/usr/local/include -I/usr/local/opt/sqlite/include -DNDEBUG -g -fwrapv -O3 -Wall -Wstrict-prototypes -Ddarwin -D_THREAD_SAFE -DENABLE_NEWBUF=1 -I/usr/X11R6/include -I/usr/local/include/SDL -I/opt/X11/include/freetype2 -I/opt/X11/include -I/usr/local/Cellar/python/2.7.6/Frameworks/Python.framework/Versions/2.7/include/python2.7 -c src/freetype/ft_render_cb.c -o build/temp.macosx-10.9-x86_64-2.7/src/freetype/ft_render_cb.o
    clang -fno-strict-aliasing -fno-common -dynamic -I/usr/local/include -I/usr/local/opt/sqlite/include -DNDEBUG -g -fwrapv -O3 -Wall -Wstrict-prototypes -Ddarwin -D_THREAD_SAFE -DENABLE_NEWBUF=1 -I/usr/X11R6/include -I/usr/local/include/SDL -I/opt/X11/include/freetype2 -I/opt/X11/include -I/usr/local/Cellar/python/2.7.6/Frameworks/Python.framework/Versions/2.7/include/python2.7 -c src/freetype/ft_layout.c -o build/temp.macosx-10.9-x86_64-2.7/src/freetype/ft_layout.o
    clang -fno-strict-aliasing -fno-common -dynamic -I/usr/local/include -I/usr/local/opt/sqlite/include -DNDEBUG -g -fwrapv -O3 -Wall -Wstrict-prototypes -Ddarwin -D_THREAD_SAFE -DENABLE_NEWBUF=1 -I/usr/X11R6/include -I/usr/local/include/SDL -I/opt/X11/include/freetype2 -I/opt/X11/include -I/usr/local/Cellar/python/2.7.6/Frameworks/Python.framework/Versions/2.7/include/python2.7 -c src/freetype/ft_unicode.c -o build/temp.macosx-10.9-x86_64-2.7/src/freetype/ft_unicode.o
    clang -fno-strict-aliasing -fno-common -dynamic -I/usr/local/include -I/usr/local/opt/sqlite/include -DNDEBUG -g -fwrapv -O3 -Wall -Wstrict-prototypes -Ddarwin -D_THREAD_SAFE -DENABLE_NEWBUF=1 -I/usr/X11R6/include -I/usr/local/include/SDL -I/opt/X11/include/freetype2 -I/opt/X11/include -I/usr/local/Cellar/python/2.7.6/Frameworks/Python.framework/Versions/2.7/include/python2.7 -c src/_freetype.c -o build/temp.macosx-10.9-x86_64-2.7/src/_freetype.o
    clang -bundle -undefined dynamic_lookup -L/usr/local/lib -L/usr/local/opt/sqlite/lib build/temp.macosx-10.9-x86_64-2.7/src/freetype/ft_cache.o build/temp.macosx-10.9-x86_64-2.7/src/freetype/ft_wrap.o build/temp.macosx-10.9-x86_64-2.7/src/freetype/ft_render.o build/temp.macosx-10.9-x86_64-2.7/src/freetype/ft_render_cb.o build/temp.macosx-10.9-x86_64-2.7/src/freetype/ft_layout.o build/temp.macosx-10.9-x86_64-2.7/src/freetype/ft_unicode.o build/temp.macosx-10.9-x86_64-2.7/src/_freetype.o -L/usr/local/lib -L/opt/X11/lib -lSDLmain -lSDL -lfreetype -lz -lbz2 -o build/lib.macosx-10.9-x86_64-2.7/pygame/_freetype.so -Wl,-framework,Cocoa
    building 'pygame.base' extension
    clang -fno-strict-aliasing -fno-common -dynamic -I/usr/local/include -I/usr/local/opt/sqlite/include -DNDEBUG -g -fwrapv -O3 -Wall -Wstrict-prototypes -Ddarwin -D_THREAD_SAFE -DENABLE_NEWBUF=1 -I/usr/X11R6/include -I/usr/local/include/SDL -I/usr/local/Cellar/python/2.7.6/Frameworks/Python.framework/Versions/2.7/include/python2.7 -c src/base.c -o build/temp.macosx-10.9-x86_64-2.7/src/base.o
    clang -bundle -undefined dynamic_lookup -L/usr/local/lib -L/usr/local/opt/sqlite/lib build/temp.macosx-10.9-x86_64-2.7/src/base.o -L/usr/local/lib -lSDLmain -lSDL -o build/lib.macosx-10.9-x86_64-2.7/pygame/base.so -Wl,-framework,Cocoa
    building 'pygame.cdrom' extension
    clang -fno-strict-aliasing -fno-common -dynamic -I/usr/local/include -I/usr/local/opt/sqlite/include -DNDEBUG -g -fwrapv -O3 -Wall -Wstrict-prototypes -Ddarwin -D_THREAD_SAFE -DENABLE_NEWBUF=1 -I/usr/X11R6/include -I/usr/local/include/SDL -I/usr/local/Cellar/python/2.7.6/Frameworks/Python.framework/Versions/2.7/include/python2.7 -c src/cdrom.c -o build/temp.macosx-10.9-x86_64-2.7/src/cdrom.o
    clang -bundle -undefined dynamic_lookup -L/usr/local/lib -L/usr/local/opt/sqlite/lib build/temp.macosx-10.9-x86_64-2.7/src/cdrom.o -L/usr/local/lib -lSDLmain -lSDL -o build/lib.macosx-10.9-x86_64-2.7/pygame/cdrom.so -Wl,-framework,Cocoa
    building 'pygame.color' extension
    clang -fno-strict-aliasing -fno-common -dynamic -I/usr/local/include -I/usr/local/opt/sqlite/include -DNDEBUG -g -fwrapv -O3 -Wall -Wstrict-prototypes -Ddarwin -D_THREAD_SAFE -DENABLE_NEWBUF=1 -I/usr/X11R6/include -I/usr/local/include/SDL -I/usr/local/Cellar/python/2.7.6/Frameworks/Python.framework/Versions/2.7/include/python2.7 -c src/color.c -o build/temp.macosx-10.9-x86_64-2.7/src/color.o
    src/color.c:1504:13: warning: comparison of constant 9223372036854775807 with expression of type 'Uint32' (aka 'unsigned int') is always true [-Wtautological-constant-out-of-range-compare]
        if (tmp < LONG_MAX)
            ~~~ ^ ~~~~~~~~
    src/color.c:1549:13: warning: comparison of constant 9223372036854775807 with expression of type 'Uint32' (aka 'unsigned int') is always true [-Wtautological-constant-out-of-range-compare]
        if (tmp < LONG_MAX)
            ~~~ ^ ~~~~~~~~
    src/color.c:1567:13: warning: comparison of constant 9223372036854775807 with expression of type 'Uint32' (aka 'unsigned int') is always true [-Wtautological-constant-out-of-range-compare]
        if (tmp < LONG_MAX)
            ~~~ ^ ~~~~~~~~
    3 warnings generated.
    clang -bundle -undefined dynamic_lookup -L/usr/local/lib -L/usr/local/opt/sqlite/lib build/temp.macosx-10.9-x86_64-2.7/src/color.o -L/usr/local/lib -lSDLmain -lSDL -o build/lib.macosx-10.9-x86_64-2.7/pygame/color.so -Wl,-framework,Cocoa
    building 'pygame.constants' extension
    clang -fno-strict-aliasing -fno-common -dynamic -I/usr/local/include -I/usr/local/opt/sqlite/include -DNDEBUG -g -fwrapv -O3 -Wall -Wstrict-prototypes -Ddarwin -D_THREAD_SAFE -DENABLE_NEWBUF=1 -I/usr/X11R6/include -I/usr/local/include/SDL -I/usr/local/Cellar/python/2.7.6/Frameworks/Python.framework/Versions/2.7/include/python2.7 -c src/constants.c -o build/temp.macosx-10.9-x86_64-2.7/src/constants.o
    clang -bundle -undefined dynamic_lookup -L/usr/local/lib -L/usr/local/opt/sqlite/lib build/temp.macosx-10.9-x86_64-2.7/src/constants.o -L/usr/local/lib -lSDLmain -lSDL -o build/lib.macosx-10.9-x86_64-2.7/pygame/constants.so -Wl,-framework,Cocoa
    building 'pygame.display' extension
    clang -fno-strict-aliasing -fno-common -dynamic -I/usr/local/include -I/usr/local/opt/sqlite/include -DNDEBUG -g -fwrapv -O3 -Wall -Wstrict-prototypes -Ddarwin -D_THREAD_SAFE -DENABLE_NEWBUF=1 -I/usr/X11R6/include -I/usr/local/include/SDL -I/usr/local/Cellar/python/2.7.6/Frameworks/Python.framework/Versions/2.7/include/python2.7 -c src/display.c -o build/temp.macosx-10.9-x86_64-2.7/src/display.o
    src/display.c:328:15: warning: unused variable 'tmp' [-Wunused-variable]
        PyObject *tmp;
                  ^
    1 warning generated.
    clang -bundle -undefined dynamic_lookup -L/usr/local/lib -L/usr/local/opt/sqlite/lib build/temp.macosx-10.9-x86_64-2.7/src/display.o -L/usr/local/lib -lSDLmain -lSDL -o build/lib.macosx-10.9-x86_64-2.7/pygame/display.so -Wl,-framework,Cocoa
    building 'pygame.event' extension
    clang -fno-strict-aliasing -fno-common -dynamic -I/usr/local/include -I/usr/local/opt/sqlite/include -DNDEBUG -g -fwrapv -O3 -Wall -Wstrict-prototypes -Ddarwin -D_THREAD_SAFE -DENABLE_NEWBUF=1 -I/usr/X11R6/include -I/usr/local/include/SDL -I/usr/local/Cellar/python/2.7.6/Frameworks/Python.framework/Versions/2.7/include/python2.7 -c src/event.c -o build/temp.macosx-10.9-x86_64-2.7/src/event.o
    clang -bundle -undefined dynamic_lookup -L/usr/local/lib -L/usr/local/opt/sqlite/lib build/temp.macosx-10.9-x86_64-2.7/src/event.o -L/usr/local/lib -lSDLmain -lSDL -o build/lib.macosx-10.9-x86_64-2.7/pygame/event.so -Wl,-framework,Cocoa
    building 'pygame.fastevent' extension
    clang -fno-strict-aliasing -fno-common -dynamic -I/usr/local/include -I/usr/local/opt/sqlite/include -DNDEBUG -g -fwrapv -O3 -Wall -Wstrict-prototypes -Ddarwin -D_THREAD_SAFE -DENABLE_NEWBUF=1 -I/usr/X11R6/include -I/usr/local/include/SDL -I/usr/local/Cellar/python/2.7.6/Frameworks/Python.framework/Versions/2.7/include/python2.7 -c src/fastevent.c -o build/temp.macosx-10.9-x86_64-2.7/src/fastevent.o
    clang -fno-strict-aliasing -fno-common -dynamic -I/usr/local/include -I/usr/local/opt/sqlite/include -DNDEBUG -g -fwrapv -O3 -Wall -Wstrict-prototypes -Ddarwin -D_THREAD_SAFE -DENABLE_NEWBUF=1 -I/usr/X11R6/include -I/usr/local/include/SDL -I/usr/local/Cellar/python/2.7.6/Frameworks/Python.framework/Versions/2.7/include/python2.7 -c src/fastevents.c -o build/temp.macosx-10.9-x86_64-2.7/src/fastevents.o
    clang -bundle -undefined dynamic_lookup -L/usr/local/lib -L/usr/local/opt/sqlite/lib build/temp.macosx-10.9-x86_64-2.7/src/fastevent.o build/temp.macosx-10.9-x86_64-2.7/src/fastevents.o -L/usr/local/lib -lSDLmain -lSDL -o build/lib.macosx-10.9-x86_64-2.7/pygame/fastevent.so -Wl,-framework,Cocoa
    building 'pygame.key' extension
    clang -fno-strict-aliasing -fno-common -dynamic -I/usr/local/include -I/usr/local/opt/sqlite/include -DNDEBUG -g -fwrapv -O3 -Wall -Wstrict-prototypes -Ddarwin -D_THREAD_SAFE -DENABLE_NEWBUF=1 -I/usr/X11R6/include -I/usr/local/include/SDL -I/usr/local/Cellar/python/2.7.6/Frameworks/Python.framework/Versions/2.7/include/python2.7 -c src/key.c -o build/temp.macosx-10.9-x86_64-2.7/src/key.o
    clang -bundle -undefined dynamic_lookup -L/usr/local/lib -L/usr/local/opt/sqlite/lib build/temp.macosx-10.9-x86_64-2.7/src/key.o -L/usr/local/lib -lSDLmain -lSDL -o build/lib.macosx-10.9-x86_64-2.7/pygame/key.so -Wl,-framework,Cocoa
    building 'pygame.mouse' extension
    clang -fno-strict-aliasing -fno-common -dynamic -I/usr/local/include -I/usr/local/opt/sqlite/include -DNDEBUG -g -fwrapv -O3 -Wall -Wstrict-prototypes -Ddarwin -D_THREAD_SAFE -DENABLE_NEWBUF=1 -I/usr/X11R6/include -I/usr/local/include/SDL -I/usr/local/Cellar/python/2.7.6/Frameworks/Python.framework/Versions/2.7/include/python2.7 -c src/mouse.c -o build/temp.macosx-10.9-x86_64-2.7/src/mouse.o
    clang -bundle -undefined dynamic_lookup -L/usr/local/lib -L/usr/local/opt/sqlite/lib build/temp.macosx-10.9-x86_64-2.7/src/mouse.o -L/usr/local/lib -lSDLmain -lSDL -o build/lib.macosx-10.9-x86_64-2.7/pygame/mouse.so -Wl,-framework,Cocoa
    building 'pygame.rect' extension
    clang -fno-strict-aliasing -fno-common -dynamic -I/usr/local/include -I/usr/local/opt/sqlite/include -DNDEBUG -g -fwrapv -O3 -Wall -Wstrict-prototypes -Ddarwin -D_THREAD_SAFE -DENABLE_NEWBUF=1 -I/usr/X11R6/include -I/usr/local/include/SDL -I/usr/local/Cellar/python/2.7.6/Frameworks/Python.framework/Versions/2.7/include/python2.7 -c src/rect.c -o build/temp.macosx-10.9-x86_64-2.7/src/rect.o
    clang -bundle -undefined dynamic_lookup -L/usr/local/lib -L/usr/local/opt/sqlite/lib build/temp.macosx-10.9-x86_64-2.7/src/rect.o -L/usr/local/lib -lSDLmain -lSDL -o build/lib.macosx-10.9-x86_64-2.7/pygame/rect.so -Wl,-framework,Cocoa
    building 'pygame.rwobject' extension
    clang -fno-strict-aliasing -fno-common -dynamic -I/usr/local/include -I/usr/local/opt/sqlite/include -DNDEBUG -g -fwrapv -O3 -Wall -Wstrict-prototypes -Ddarwin -D_THREAD_SAFE -DENABLE_NEWBUF=1 -I/usr/X11R6/include -I/usr/local/include/SDL -I/usr/local/Cellar/python/2.7.6/Frameworks/Python.framework/Versions/2.7/include/python2.7 -c src/rwobject.c -o build/temp.macosx-10.9-x86_64-2.7/src/rwobject.o
    clang -bundle -undefined dynamic_lookup -L/usr/local/lib -L/usr/local/opt/sqlite/lib build/temp.macosx-10.9-x86_64-2.7/src/rwobject.o -L/usr/local/lib -lSDLmain -lSDL -o build/lib.macosx-10.9-x86_64-2.7/pygame/rwobject.so -Wl,-framework,Cocoa
    building 'pygame.surface' extension
    clang -fno-strict-aliasing -fno-common -dynamic -I/usr/local/include -I/usr/local/opt/sqlite/include -DNDEBUG -g -fwrapv -O3 -Wall -Wstrict-prototypes -Ddarwin -D_THREAD_SAFE -DENABLE_NEWBUF=1 -I/usr/X11R6/include -I/usr/local/include/SDL -I/usr/local/Cellar/python/2.7.6/Frameworks/Python.framework/Versions/2.7/include/python2.7 -c src/surface.c -o build/temp.macosx-10.9-x86_64-2.7/src/surface.o
    clang -fno-strict-aliasing -fno-common -dynamic -I/usr/local/include -I/usr/local/opt/sqlite/include -DNDEBUG -g -fwrapv -O3 -Wall -Wstrict-prototypes -Ddarwin -D_THREAD_SAFE -DENABLE_NEWBUF=1 -I/usr/X11R6/include -I/usr/local/include/SDL -I/usr/local/Cellar/python/2.7.6/Frameworks/Python.framework/Versions/2.7/include/python2.7 -c src/alphablit.c -o build/temp.macosx-10.9-x86_64-2.7/src/alphablit.o
    clang -fno-strict-aliasing -fno-common -dynamic -I/usr/local/include -I/usr/local/opt/sqlite/include -DNDEBUG -g -fwrapv -O3 -Wall -Wstrict-prototypes -Ddarwin -D_THREAD_SAFE -DENABLE_NEWBUF=1 -I/usr/X11R6/include -I/usr/local/include/SDL -I/usr/local/Cellar/python/2.7.6/Frameworks/Python.framework/Versions/2.7/include/python2.7 -c src/surface_fill.c -o build/temp.macosx-10.9-x86_64-2.7/src/surface_fill.o
    clang -bundle -undefined dynamic_lookup -L/usr/local/lib -L/usr/local/opt/sqlite/lib build/temp.macosx-10.9-x86_64-2.7/src/surface.o build/temp.macosx-10.9-x86_64-2.7/src/alphablit.o build/temp.macosx-10.9-x86_64-2.7/src/surface_fill.o -L/usr/local/lib -lSDLmain -lSDL -o build/lib.macosx-10.9-x86_64-2.7/pygame/surface.so -Wl,-framework,Cocoa
    building 'pygame.surflock' extension
    clang -fno-strict-aliasing -fno-common -dynamic -I/usr/local/include -I/usr/local/opt/sqlite/include -DNDEBUG -g -fwrapv -O3 -Wall -Wstrict-prototypes -Ddarwin -D_THREAD_SAFE -DENABLE_NEWBUF=1 -I/usr/X11R6/include -I/usr/local/include/SDL -I/usr/local/Cellar/python/2.7.6/Frameworks/Python.framework/Versions/2.7/include/python2.7 -c src/surflock.c -o build/temp.macosx-10.9-x86_64-2.7/src/surflock.o
    clang -bundle -undefined dynamic_lookup -L/usr/local/lib -L/usr/local/opt/sqlite/lib build/temp.macosx-10.9-x86_64-2.7/src/surflock.o -L/usr/local/lib -lSDLmain -lSDL -o build/lib.macosx-10.9-x86_64-2.7/pygame/surflock.so -Wl,-framework,Cocoa
    building 'pygame.time' extension
    clang -fno-strict-aliasing -fno-common -dynamic -I/usr/local/include -I/usr/local/opt/sqlite/include -DNDEBUG -g -fwrapv -O3 -Wall -Wstrict-prototypes -Ddarwin -D_THREAD_SAFE -DENABLE_NEWBUF=1 -I/usr/X11R6/include -I/usr/local/include/SDL -I/usr/local/Cellar/python/2.7.6/Frameworks/Python.framework/Versions/2.7/include/python2.7 -c src/time.c -o build/temp.macosx-10.9-x86_64-2.7/src/time.o
    clang -bundle -undefined dynamic_lookup -L/usr/local/lib -L/usr/local/opt/sqlite/lib build/temp.macosx-10.9-x86_64-2.7/src/time.o -L/usr/local/lib -lSDLmain -lSDL -o build/lib.macosx-10.9-x86_64-2.7/pygame/time.so -Wl,-framework,Cocoa
    building 'pygame.joystick' extension
    clang -fno-strict-aliasing -fno-common -dynamic -I/usr/local/include -I/usr/local/opt/sqlite/include -DNDEBUG -g -fwrapv -O3 -Wall -Wstrict-prototypes -Ddarwin -D_THREAD_SAFE -DENABLE_NEWBUF=1 -I/usr/X11R6/include -I/usr/local/include/SDL -I/usr/local/Cellar/python/2.7.6/Frameworks/Python.framework/Versions/2.7/include/python2.7 -c src/joystick.c -o build/temp.macosx-10.9-x86_64-2.7/src/joystick.o
    clang -bundle -undefined dynamic_lookup -L/usr/local/lib -L/usr/local/opt/sqlite/lib build/temp.macosx-10.9-x86_64-2.7/src/joystick.o -L/usr/local/lib -lSDLmain -lSDL -o build/lib.macosx-10.9-x86_64-2.7/pygame/joystick.so -Wl,-framework,Cocoa
    building 'pygame.draw' extension
    clang -fno-strict-aliasing -fno-common -dynamic -I/usr/local/include -I/usr/local/opt/sqlite/include -DNDEBUG -g -fwrapv -O3 -Wall -Wstrict-prototypes -Ddarwin -D_THREAD_SAFE -DENABLE_NEWBUF=1 -I/usr/X11R6/include -I/usr/local/include/SDL -I/usr/local/Cellar/python/2.7.6/Frameworks/Python.framework/Versions/2.7/include/python2.7 -c src/draw.c -o build/temp.macosx-10.9-x86_64-2.7/src/draw.o
    clang -bundle -undefined dynamic_lookup -L/usr/local/lib -L/usr/local/opt/sqlite/lib build/temp.macosx-10.9-x86_64-2.7/src/draw.o -L/usr/local/lib -lSDLmain -lSDL -o build/lib.macosx-10.9-x86_64-2.7/pygame/draw.so -Wl,-framework,Cocoa
    building 'pygame.image' extension
    clang -fno-strict-aliasing -fno-common -dynamic -I/usr/local/include -I/usr/local/opt/sqlite/include -DNDEBUG -g -fwrapv -O3 -Wall -Wstrict-prototypes -Ddarwin -D_THREAD_SAFE -DENABLE_NEWBUF=1 -I/usr/X11R6/include -I/usr/local/include/SDL -I/usr/local/Cellar/python/2.7.6/Frameworks/Python.framework/Versions/2.7/include/python2.7 -c src/image.c -o build/temp.macosx-10.9-x86_64-2.7/src/image.o
    clang -bundle -undefined dynamic_lookup -L/usr/local/lib -L/usr/local/opt/sqlite/lib build/temp.macosx-10.9-x86_64-2.7/src/image.o -L/usr/local/lib -lSDLmain -lSDL -o build/lib.macosx-10.9-x86_64-2.7/pygame/image.so -Wl,-framework,Cocoa
    building 'pygame.overlay' extension
    clang -fno-strict-aliasing -fno-common -dynamic -I/usr/local/include -I/usr/local/opt/sqlite/include -DNDEBUG -g -fwrapv -O3 -Wall -Wstrict-prototypes -Ddarwin -D_THREAD_SAFE -DENABLE_NEWBUF=1 -I/usr/X11R6/include -I/usr/local/include/SDL -I/usr/local/Cellar/python/2.7.6/Frameworks/Python.framework/Versions/2.7/include/python2.7 -c src/overlay.c -o build/temp.macosx-10.9-x86_64-2.7/src/overlay.o
    clang -bundle -undefined dynamic_lookup -L/usr/local/lib -L/usr/local/opt/sqlite/lib build/temp.macosx-10.9-x86_64-2.7/src/overlay.o -L/usr/local/lib -lSDLmain -lSDL -o build/lib.macosx-10.9-x86_64-2.7/pygame/overlay.so -Wl,-framework,Cocoa
    building 'pygame.transform' extension
    clang -fno-strict-aliasing -fno-common -dynamic -I/usr/local/include -I/usr/local/opt/sqlite/include -DNDEBUG -g -fwrapv -O3 -Wall -Wstrict-prototypes -Ddarwin -D_THREAD_SAFE -D_NO_MMX_FOR_X86_64 -DENABLE_NEWBUF=1 -I/usr/X11R6/include -I/usr/local/include/SDL -I/usr/local/Cellar/python/2.7.6/Frameworks/Python.framework/Versions/2.7/include/python2.7 -c src/transform.c -o build/temp.macosx-10.9-x86_64-2.7/src/transform.o
    clang -fno-strict-aliasing -fno-common -dynamic -I/usr/local/include -I/usr/local/opt/sqlite/include -DNDEBUG -g -fwrapv -O3 -Wall -Wstrict-prototypes -Ddarwin -D_THREAD_SAFE -D_NO_MMX_FOR_X86_64 -DENABLE_NEWBUF=1 -I/usr/X11R6/include -I/usr/local/include/SDL -I/usr/local/Cellar/python/2.7.6/Frameworks/Python.framework/Versions/2.7/include/python2.7 -c src/rotozoom.c -o build/temp.macosx-10.9-x86_64-2.7/src/rotozoom.o
    clang -fno-strict-aliasing -fno-common -dynamic -I/usr/local/include -I/usr/local/opt/sqlite/include -DNDEBUG -g -fwrapv -O3 -Wall -Wstrict-prototypes -Ddarwin -D_THREAD_SAFE -D_NO_MMX_FOR_X86_64 -DENABLE_NEWBUF=1 -I/usr/X11R6/include -I/usr/local/include/SDL -I/usr/local/Cellar/python/2.7.6/Frameworks/Python.framework/Versions/2.7/include/python2.7 -c src/scale2x.c -o build/temp.macosx-10.9-x86_64-2.7/src/scale2x.o
    clang -fno-strict-aliasing -fno-common -dynamic -I/usr/local/include -I/usr/local/opt/sqlite/include -DNDEBUG -g -fwrapv -O3 -Wall -Wstrict-prototypes -Ddarwin -D_THREAD_SAFE -D_NO_MMX_FOR_X86_64 -DENABLE_NEWBUF=1 -I/usr/X11R6/include -I/usr/local/include/SDL -I/usr/local/Cellar/python/2.7.6/Frameworks/Python.framework/Versions/2.7/include/python2.7 -c src/scale_mmx.c -o build/temp.macosx-10.9-x86_64-2.7/src/scale_mmx.o
    clang -bundle -undefined dynamic_lookup -L/usr/local/lib -L/usr/local/opt/sqlite/lib build/temp.macosx-10.9-x86_64-2.7/src/transform.o build/temp.macosx-10.9-x86_64-2.7/src/rotozoom.o build/temp.macosx-10.9-x86_64-2.7/src/scale2x.o build/temp.macosx-10.9-x86_64-2.7/src/scale_mmx.o -L/usr/local/lib -lSDLmain -lSDL -o build/lib.macosx-10.9-x86_64-2.7/pygame/transform.so -Wl,-framework,Cocoa
    building 'pygame.mask' extension
    clang -fno-strict-aliasing -fno-common -dynamic -I/usr/local/include -I/usr/local/opt/sqlite/include -DNDEBUG -g -fwrapv -O3 -Wall -Wstrict-prototypes -Ddarwin -D_THREAD_SAFE -DENABLE_NEWBUF=1 -I/usr/X11R6/include -I/usr/local/include/SDL -I/usr/local/Cellar/python/2.7.6/Frameworks/Python.framework/Versions/2.7/include/python2.7 -c src/mask.c -o build/temp.macosx-10.9-x86_64-2.7/src/mask.o
    clang -fno-strict-aliasing -fno-common -dynamic -I/usr/local/include -I/usr/local/opt/sqlite/include -DNDEBUG -g -fwrapv -O3 -Wall -Wstrict-prototypes -Ddarwin -D_THREAD_SAFE -DENABLE_NEWBUF=1 -I/usr/X11R6/include -I/usr/local/include/SDL -I/usr/local/Cellar/python/2.7.6/Frameworks/Python.framework/Versions/2.7/include/python2.7 -c src/bitmask.c -o build/temp.macosx-10.9-x86_64-2.7/src/bitmask.o
    clang -bundle -undefined dynamic_lookup -L/usr/local/lib -L/usr/local/opt/sqlite/lib build/temp.macosx-10.9-x86_64-2.7/src/mask.o build/temp.macosx-10.9-x86_64-2.7/src/bitmask.o -L/usr/local/lib -lSDLmain -lSDL -o build/lib.macosx-10.9-x86_64-2.7/pygame/mask.so -Wl,-framework,Cocoa
    building 'pygame.bufferproxy' extension
    clang -fno-strict-aliasing -fno-common -dynamic -I/usr/local/include -I/usr/local/opt/sqlite/include -DNDEBUG -g -fwrapv -O3 -Wall -Wstrict-prototypes -Ddarwin -D_THREAD_SAFE -DENABLE_NEWBUF=1 -I/usr/X11R6/include -I/usr/local/include/SDL -I/usr/local/Cellar/python/2.7.6/Frameworks/Python.framework/Versions/2.7/include/python2.7 -c src/bufferproxy.c -o build/temp.macosx-10.9-x86_64-2.7/src/bufferproxy.o
    clang -bundle -undefined dynamic_lookup -L/usr/local/lib -L/usr/local/opt/sqlite/lib build/temp.macosx-10.9-x86_64-2.7/src/bufferproxy.o -L/usr/local/lib -lSDLmain -lSDL -o build/lib.macosx-10.9-x86_64-2.7/pygame/bufferproxy.so -Wl,-framework,Cocoa
    building 'pygame.pixelarray' extension
    clang -fno-strict-aliasing -fno-common -dynamic -I/usr/local/include -I/usr/local/opt/sqlite/include -DNDEBUG -g -fwrapv -O3 -Wall -Wstrict-prototypes -Ddarwin -D_THREAD_SAFE -DENABLE_NEWBUF=1 -I/usr/X11R6/include -I/usr/local/include/SDL -I/usr/local/Cellar/python/2.7.6/Frameworks/Python.framework/Versions/2.7/include/python2.7 -c src/pixelarray.c -o build/temp.macosx-10.9-x86_64-2.7/src/pixelarray.o
    clang -bundle -undefined dynamic_lookup -L/usr/local/lib -L/usr/local/opt/sqlite/lib build/temp.macosx-10.9-x86_64-2.7/src/pixelarray.o -L/usr/local/lib -lSDLmain -lSDL -o build/lib.macosx-10.9-x86_64-2.7/pygame/pixelarray.so -Wl,-framework,Cocoa
    building 'pygame.math' extension
    clang -fno-strict-aliasing -fno-common -dynamic -I/usr/local/include -I/usr/local/opt/sqlite/include -DNDEBUG -g -fwrapv -O3 -Wall -Wstrict-prototypes -Ddarwin -D_THREAD_SAFE -DENABLE_NEWBUF=1 -I/usr/X11R6/include -I/usr/local/include/SDL -I/usr/local/Cellar/python/2.7.6/Frameworks/Python.framework/Versions/2.7/include/python2.7 -c src/math.c -o build/temp.macosx-10.9-x86_64-2.7/src/math.o
    clang -bundle -undefined dynamic_lookup -L/usr/local/lib -L/usr/local/opt/sqlite/lib build/temp.macosx-10.9-x86_64-2.7/src/math.o -L/usr/local/lib -lSDLmain -lSDL -o build/lib.macosx-10.9-x86_64-2.7/pygame/math.so -Wl,-framework,Cocoa
    building 'pygame.pixelcopy' extension
    clang -fno-strict-aliasing -fno-common -dynamic -I/usr/local/include -I/usr/local/opt/sqlite/include -DNDEBUG -g -fwrapv -O3 -Wall -Wstrict-prototypes -Ddarwin -D_THREAD_SAFE -DENABLE_NEWBUF=1 -I/usr/X11R6/include -I/usr/local/include/SDL -I/usr/local/Cellar/python/2.7.6/Frameworks/Python.framework/Versions/2.7/include/python2.7 -c src/pixelcopy.c -o build/temp.macosx-10.9-x86_64-2.7/src/pixelcopy.o
    src/pixelcopy.c:910:22: warning: format specifies type 'int' but the argument has type 'Py_ssize_t' (aka 'long') [-Wformat]
                         src_view_p->shape[src_ndim - 1]);
                         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    1 warning generated.
    clang -bundle -undefined dynamic_lookup -L/usr/local/lib -L/usr/local/opt/sqlite/lib build/temp.macosx-10.9-x86_64-2.7/src/pixelcopy.o -L/usr/local/lib -lSDLmain -lSDL -o build/lib.macosx-10.9-x86_64-2.7/pygame/pixelcopy.so -Wl,-framework,Cocoa
    building 'pygame.newbuffer' extension
    clang -fno-strict-aliasing -fno-common -dynamic -I/usr/local/include -I/usr/local/opt/sqlite/include -DNDEBUG -g -fwrapv -O3 -Wall -Wstrict-prototypes -DENABLE_NEWBUF=1 -I/usr/local/Cellar/python/2.7.6/Frameworks/Python.framework/Versions/2.7/include/python2.7 -c src/newbuffer.c -o build/temp.macosx-10.9-x86_64-2.7/src/newbuffer.o
    clang -bundle -undefined dynamic_lookup -L/usr/local/lib -L/usr/local/opt/sqlite/lib build/temp.macosx-10.9-x86_64-2.7/src/newbuffer.o -o build/lib.macosx-10.9-x86_64-2.7/pygame/newbuffer.so
    building 'pygame.sdlmain_osx' extension
    clang -fno-strict-aliasing -fno-common -dynamic -I/usr/local/include -I/usr/local/opt/sqlite/include -DNDEBUG -g -fwrapv -O3 -Wall -Wstrict-prototypes -Ddarwin -D_THREAD_SAFE -DENABLE_NEWBUF=1 -I/usr/X11R6/include -I/usr/local/include/SDL -I/usr/local/Cellar/python/2.7.6/Frameworks/Python.framework/Versions/2.7/include/python2.7 -c src/sdlmain_osx.m -o build/temp.macosx-10.9-x86_64-2.7/src/sdlmain_osx.o
    src/sdlmain_osx.m:240:24: warning: unused variable 'pool' [-Wunused-variable]
        NSAutoreleasePool   *pool = [[NSAutoreleasePool alloc] init];
                             ^
    src/sdlmain_osx.m:320:12: warning: unused variable 'ret' [-Wunused-variable]
            PyObject *ret = NULL;
                      ^
    2 warnings generated.
    clang -bundle -undefined dynamic_lookup -L/usr/local/lib -L/usr/local/opt/sqlite/lib build/temp.macosx-10.9-x86_64-2.7/src/sdlmain_osx.o -L/usr/local/lib -lSDLmain -lSDL -o build/lib.macosx-10.9-x86_64-2.7/pygame/sdlmain_osx.so -Wl,-framework,Cocoa
    
    no previously-included directories found matching '*/CVS'
    no previously-included directories found matching '*/*/CVS'
Successfully installed pygame

{% endcodeblock %}
