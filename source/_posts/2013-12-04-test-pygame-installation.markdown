---
layout: post
title: "testing pygame installation"
date: 2013-12-04 22:50
comments: true
categories: osx pygame 
---

There are some failures and errors:

{% codeblock %}

$ python -m pygame.tests 
skipping pygame.tests._movie_test (tag 'subprocess_ignore')
skipping pygame.tests.cdrom_test (tag 'interactive')
skipping pygame.tests.midi_test (tag 'interactive')
skipping pygame.tests.movie_test (tag 'subprocess_ignore')
skipping pygame.tests.scrap_test (tag 'subprocess_ignore')
loading pygame.tests.base_test
loading pygame.tests.blit_test
loading pygame.tests.bufferproxy_test
loading pygame.tests.camera_test
loading pygame.tests.color_test
loading pygame.tests.compat_test
loading pygame.tests.cursors_test
loading pygame.tests.display_test
loading pygame.tests.draw_test
loading pygame.tests.event_test
loading pygame.tests.fastevent_test
loading pygame.tests.font_test
loading pygame.tests.freetype_test
loading pygame.tests.ftfont_test
loading pygame.tests.gfxdraw_test
loading pygame.tests.image__save_gl_surface_test
loading pygame.tests.image_test
loading pygame.tests.imageext_test
loading pygame.tests.joystick_test
loading pygame.tests.key_test
loading pygame.tests.mask_test
loading pygame.tests.math_test
loading pygame.tests.mixer_music_test
loading pygame.tests.mixer_test
loading pygame.tests.mouse_test
loading pygame.tests.overlay_test
loading pygame.tests.pixelarray_test
loading pygame.tests.pixelcopy_test
loading pygame.tests.rect_test
loading pygame.tests.rwobject_test
loading pygame.tests.sndarray_test
loading pygame.tests.sprite_test
loading pygame.tests.surface_test
loading pygame.tests.surfarray_test
loading pygame.tests.surflock_test
loading pygame.tests.sysfont_test
loading pygame.tests.threads_test
loading pygame.tests.time_test
loading pygame.tests.transform_test
...................................................................................................................................................F........................................................FF...........................................................................................................E.F..........................................................................................................................................................................................................................................................................................................E............................................................
======================================================================
FAIL: FreeTypeFontTest.test_freetype_Font_get_rect
----------------------------------------------------------------------
Traceback (most recent call last):
  File "/usr/local/Cellar/python/2.7.6/Frameworks/Python.framework/Versions/2.7/lib/python2.7/site-packages/pygame/tests/freetype_test.py", line 434, in test_freetype_Font_get_rect
    self.assertNotEqual(size_utf16[0], size_utf32[0]);
AssertionError: -1 == -1

======================================================================
FAIL: ImageModuleTest.testLoadPNG
----------------------------------------------------------------------
Traceback (most recent call last):
  File "/usr/local/Cellar/python/2.7.6/Frameworks/Python.framework/Versions/2.7/lib/python2.7/site-packages/pygame/tests/image_test.py", line 82, in testLoadPNG
    self.assertEquals(pixel_x1_y1, greyish_pixel)
AssertionError: (109, 120, 129, 140) != (110, 120, 130, 140)

======================================================================
FAIL: ImageModuleTest.testSavePNG
----------------------------------------------------------------------
Traceback (most recent call last):
  File "/usr/local/Cellar/python/2.7.6/Frameworks/Python.framework/Versions/2.7/lib/python2.7/site-packages/pygame/tests/image_test.py", line 141, in testSavePNG
    self.assertEquals(pixels_as_tuples[0], reddish_pixel)
AssertionError: (0, 215, 0, 255) != (215, 0, 0, 255)

======================================================================
ERROR: MixerMusicModuleTest.test_load
----------------------------------------------------------------------
Traceback (most recent call last):
  File "/usr/local/Cellar/python/2.7.6/Frameworks/Python.framework/Versions/2.7/lib/python2.7/site-packages/pygame/tests/mixer_music_test.py", line 45, in test_load
    pygame.mixer.music.load(umusfn)
error: Unrecognized music format

======================================================================
FAIL: MixerModuleTest.test_array_keyword
----------------------------------------------------------------------
Traceback (most recent call last):
  File "/usr/local/Cellar/python/2.7.6/Frameworks/Python.framework/Versions/2.7/lib/python2.7/site-packages/pygame/tests/mixer_test.py", line 336, in test_array_keyword
    self._test_array_argument(format, a, c == channels)
  File "/usr/local/Cellar/python/2.7.6/Frameworks/Python.framework/Versions/2.7/lib/python2.7/site-packages/pygame/tests/mixer_test.py", line 349, in _test_array_argument
    (format, a.dtype))
AssertionError: Raised ValueError: Format -8, dtype int32

======================================================================
ERROR: SurfaceTypeTest.test_image_convert_bug_131
----------------------------------------------------------------------
Traceback (most recent call last):
  File "/usr/local/Cellar/python/2.7.6/Frameworks/Python.framework/Versions/2.7/lib/python2.7/site-packages/pygame/tests/surface_test.py", line 682, in test_image_convert_bug_131
    self.assertEquals( im.get_palette(),  ((0, 0, 0, 255), (255, 255, 255, 255)) )
error: Surface has no palette to get


----------------------------------------------------------------------
Ran 675 tests in 66.985s

FAILED (failures=4, errors=2)

{% endcodeblock %}

