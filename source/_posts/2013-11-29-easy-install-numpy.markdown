---
layout: post
title: "easy_install numpy"
date: 2013-11-29 20:34
comments: true
categories: python osx numpy 
---


Despite this wall of warnings, `numpy` seems to work fine 



{% codeblock %}

$ easy_install numpy
Searching for numpy
Reading https://pypi.python.org/simple/numpy/
Best match: numpy 1.8.0
Downloading https://pypi.python.org/packages/source/n/numpy/numpy-1.8.0.zip#md5=6c918bb91c0cfa055b16b13850cfcd6e
Processing numpy-1.8.0.zip
Writing /var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/setup.cfg
Running numpy-1.8.0/setup.py -q bdist_egg --dist-dir /var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/egg-dist-tmp-PMFGZU
Running from numpy source directory.
non-existing path in '/private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/distutils': 'site.cfg'
non-existing path in '/private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/lib': 'benchmarks'
/usr/local/Cellar/python/2.7.6/Frameworks/Python.framework/Versions/2.7/lib/python2.7/distutils/dist.py:267: UserWarning: Unknown distribution option: 'define_macros'
  warnings.warn(msg)
Could not locate executable gfortran
Could not locate executable f95
Could not locate executable f90
Could not locate executable f77
Could not locate executable xlf90
Could not locate executable xlf
Could not locate executable ifort
Could not locate executable ifc
Could not locate executable g77
Could not locate executable g95
Could not locate executable pgfortran
don't know how to compile Fortran code on platform 'posix'
_configtest.c:1:5: warning: incompatible redeclaration of library function 'exp' [-Wincompatible-library-redeclaration]
int exp (void);
    ^
_configtest.c:1:5: note: 'exp' is a builtin with type 'double (double)'
1 warning generated.
_configtest.c:1:10: fatal error: 'endian.h' file not found
#include <endian.h>
         ^
1 error generated.
_configtest.c:1:10: fatal error: 'endian.h' file not found
#include <endian.h>
         ^
1 error generated.
_configtest.c:5:28: error: 'test_array' declared as an array with a negative size
    static int test_array [1 - 2 * !(((long) (sizeof (npy_check_sizeof_type))) == 4)];
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
1 error generated.
_configtest.c:5:28: error: 'test_array' declared as an array with a negative size
    static int test_array [1 - 2 * !(((long) (sizeof (npy_check_sizeof_type))) == 4)];
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
1 error generated.
_configtest.c:5:28: error: 'test_array' declared as an array with a negative size
    static int test_array [1 - 2 * !(((long) (sizeof (npy_check_sizeof_type))) == 4)];
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
1 error generated.
_configtest.c:5:28: error: 'test_array' declared as an array with a negative size
    static int test_array [1 - 2 * !(((long) (sizeof (npy_check_sizeof_type))) == 4)];
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
1 error generated.
_configtest.c:5:28: error: 'test_array' declared as an array with a negative size
    static int test_array [1 - 2 * !(((long) (sizeof (npy_check_sizeof_type))) <= 0)];
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
1 error generated.
_configtest.c:5:28: error: 'test_array' declared as an array with a negative size
    static int test_array [1 - 2 * !(((long) (sizeof (npy_check_sizeof_type))) <= 0)];
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
1 error generated.
_configtest.c:5:28: error: 'test_array' declared as an array with a negative size
    static int test_array [1 - 2 * !(((long) (sizeof (npy_check_sizeof_type))) <= 1)];
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
1 error generated.
_configtest.c:5:28: error: 'test_array' declared as an array with a negative size
    static int test_array [1 - 2 * !(((long) (sizeof (npy_check_sizeof_type))) <= 1)];
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
1 error generated.
_configtest.c:5:28: error: 'test_array' declared as an array with a negative size
    static int test_array [1 - 2 * !(((long) (sizeof (npy_check_sizeof_type))) <= 3)];
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
1 error generated.
_configtest.c:5:28: error: 'test_array' declared as an array with a negative size
    static int test_array [1 - 2 * !(((long) (sizeof (npy_check_sizeof_type))) <= 3)];
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
1 error generated.
_configtest.c:5:28: error: 'test_array' declared as an array with a negative size
    static int test_array [1 - 2 * !(((long) (sizeof (npy_check_sizeof_type))) <= 7)];
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
1 error generated.
_configtest.c:5:28: error: 'test_array' declared as an array with a negative size
    static int test_array [1 - 2 * !(((long) (sizeof (npy_check_sizeof_type))) <= 7)];
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
1 error generated.
_configtest.c:5:28: error: 'test_array' declared as an array with a negative size
    static int test_array [1 - 2 * !(((long) (sizeof (npy_check_sizeof_type))) == 8)];
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
1 error generated.
_configtest.c:5:28: error: 'test_array' declared as an array with a negative size
    static int test_array [1 - 2 * !(((long) (sizeof (npy_check_sizeof_type))) == 8)];
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
1 error generated.
_configtest.c:5:28: error: 'test_array' declared as an array with a negative size
    static int test_array [1 - 2 * !(((long) (sizeof (npy_check_sizeof_type))) == 8)];
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
1 error generated.
_configtest.c:5:28: error: 'test_array' declared as an array with a negative size
    static int test_array [1 - 2 * !(((long) (sizeof (npy_check_sizeof_type))) == 8)];
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
1 error generated.
_configtest.c:5:28: error: 'test_array' declared as an array with a negative size
    static int test_array [1 - 2 * !(((long) (sizeof (npy_check_sizeof_type))) <= 0)];
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
1 error generated.
_configtest.c:5:28: error: 'test_array' declared as an array with a negative size
    static int test_array [1 - 2 * !(((long) (sizeof (npy_check_sizeof_type))) <= 0)];
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
1 error generated.
_configtest.c:5:28: error: 'test_array' declared as an array with a negative size
    static int test_array [1 - 2 * !(((long) (sizeof (npy_check_sizeof_type))) <= 1)];
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
1 error generated.
_configtest.c:5:28: error: 'test_array' declared as an array with a negative size
    static int test_array [1 - 2 * !(((long) (sizeof (npy_check_sizeof_type))) <= 1)];
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
1 error generated.
_configtest.c:5:28: error: 'test_array' declared as an array with a negative size
    static int test_array [1 - 2 * !(((long) (sizeof (npy_check_sizeof_type))) <= 3)];
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
1 error generated.
_configtest.c:5:28: error: 'test_array' declared as an array with a negative size
    static int test_array [1 - 2 * !(((long) (sizeof (npy_check_sizeof_type))) <= 3)];
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
1 error generated.
_configtest.c:5:28: error: 'test_array' declared as an array with a negative size
    static int test_array [1 - 2 * !(((long) (sizeof (npy_check_sizeof_type))) <= 7)];
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
1 error generated.
_configtest.c:5:28: error: 'test_array' declared as an array with a negative size
    static int test_array [1 - 2 * !(((long) (sizeof (npy_check_sizeof_type))) <= 7)];
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
1 error generated.
_configtest.c:5:28: error: 'test_array' declared as an array with a negative size
    static int test_array [1 - 2 * !(((long) (sizeof (npy_check_sizeof_type))) <= 15)];
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
1 error generated.
_configtest.c:5:28: error: 'test_array' declared as an array with a negative size
    static int test_array [1 - 2 * !(((long) (sizeof (npy_check_sizeof_type))) <= 15)];
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
1 error generated.
_configtest.c:7:12: error: use of undeclared identifier 'SIZEOF_LONGDOUBLE'
    (void) SIZEOF_LONGDOUBLE;
           ^
1 error generated.
_configtest.c:7:12: error: use of undeclared identifier 'SIZEOF_LONGDOUBLE'
    (void) SIZEOF_LONGDOUBLE;
           ^
1 error generated.
_configtest.c:5:28: error: 'test_array' declared as an array with a negative size
    static int test_array [1 - 2 * !(((long) (sizeof (npy_check_sizeof_type))) == 8)];
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
1 error generated.
_configtest.c:5:28: error: 'test_array' declared as an array with a negative size
    static int test_array [1 - 2 * !(((long) (sizeof (npy_check_sizeof_type))) == 8)];
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
1 error generated.
_configtest.c:5:28: error: 'test_array' declared as an array with a negative size
    static int test_array [1 - 2 * !(((long) (sizeof (npy_check_sizeof_type))) == 12)];
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
1 error generated.
_configtest.c:5:28: error: 'test_array' declared as an array with a negative size
    static int test_array [1 - 2 * !(((long) (sizeof (npy_check_sizeof_type))) == 12)];
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
1 error generated.
_configtest.c:5:28: error: 'test_array' declared as an array with a negative size
    static int test_array [1 - 2 * !(((long) (sizeof (npy_check_sizeof_type))) == 8)];
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
1 error generated.
_configtest.c:5:28: error: 'test_array' declared as an array with a negative size
    static int test_array [1 - 2 * !(((long) (sizeof (npy_check_sizeof_type))) == 8)];
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
1 error generated.
_configtest.c:5:28: error: 'test_array' declared as an array with a negative size
    static int test_array [1 - 2 * !(((long) (sizeof (npy_check_sizeof_type))) == 12)];
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
1 error generated.
_configtest.c:5:28: error: 'test_array' declared as an array with a negative size
    static int test_array [1 - 2 * !(((long) (sizeof (npy_check_sizeof_type))) == 12)];
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
1 error generated.
_configtest.c:5:28: error: 'test_array' declared as an array with a negative size
    static int test_array [1 - 2 * !(((long) (sizeof (npy_check_sizeof_type))) == 16)];
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
1 error generated.
_configtest.c:5:28: error: 'test_array' declared as an array with a negative size
    static int test_array [1 - 2 * !(((long) (sizeof (npy_check_sizeof_type))) == 16)];
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
1 error generated.
_configtest.c:5:28: error: 'test_array' declared as an array with a negative size
    static int test_array [1 - 2 * !(((long) (sizeof (npy_check_sizeof_type))) == 8)];
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
1 error generated.
_configtest.c:5:28: error: 'test_array' declared as an array with a negative size
    static int test_array [1 - 2 * !(((long) (sizeof (npy_check_sizeof_type))) == 8)];
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
1 error generated.
_configtest.c:5:28: error: 'test_array' declared as an array with a negative size
    static int test_array [1 - 2 * !(((long) (sizeof (npy_check_sizeof_type))) == 12)];
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
1 error generated.
_configtest.c:5:28: error: 'test_array' declared as an array with a negative size
    static int test_array [1 - 2 * !(((long) (sizeof (npy_check_sizeof_type))) == 12)];
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
1 error generated.
_configtest.c:5:28: error: 'test_array' declared as an array with a negative size
    static int test_array [1 - 2 * !(((long) (sizeof (npy_check_sizeof_type))) == 16)];
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
1 error generated.
_configtest.c:5:28: error: 'test_array' declared as an array with a negative size
    static int test_array [1 - 2 * !(((long) (sizeof (npy_check_sizeof_type))) == 16)];
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
1 error generated.
_configtest.c:5:28: error: 'test_array' declared as an array with a negative size
    static int test_array [1 - 2 * !(((long) (sizeof (npy_check_sizeof_type))) <= 0)];
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
1 error generated.
_configtest.c:5:28: error: 'test_array' declared as an array with a negative size
    static int test_array [1 - 2 * !(((long) (sizeof (npy_check_sizeof_type))) <= 0)];
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
1 error generated.
_configtest.c:5:28: error: 'test_array' declared as an array with a negative size
    static int test_array [1 - 2 * !(((long) (sizeof (npy_check_sizeof_type))) <= 1)];
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
1 error generated.
_configtest.c:5:28: error: 'test_array' declared as an array with a negative size
    static int test_array [1 - 2 * !(((long) (sizeof (npy_check_sizeof_type))) <= 1)];
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
1 error generated.
_configtest.c:5:28: error: 'test_array' declared as an array with a negative size
    static int test_array [1 - 2 * !(((long) (sizeof (npy_check_sizeof_type))) <= 3)];
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
1 error generated.
_configtest.c:5:28: error: 'test_array' declared as an array with a negative size
    static int test_array [1 - 2 * !(((long) (sizeof (npy_check_sizeof_type))) <= 3)];
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
1 error generated.
_configtest.c:5:28: error: 'test_array' declared as an array with a negative size
    static int test_array [1 - 2 * !(((long) (sizeof (npy_check_sizeof_type))) <= 7)];
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
1 error generated.
_configtest.c:5:28: error: 'test_array' declared as an array with a negative size
    static int test_array [1 - 2 * !(((long) (sizeof (npy_check_sizeof_type))) <= 7)];
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
1 error generated.
_configtest.c:5:28: error: 'test_array' declared as an array with a negative size
    static int test_array [1 - 2 * !(((long) (sizeof (npy_check_sizeof_type))) <= 15)];
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
1 error generated.
_configtest.c:5:28: error: 'test_array' declared as an array with a negative size
    static int test_array [1 - 2 * !(((long) (sizeof (npy_check_sizeof_type))) <= 15)];
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
1 error generated.
_configtest.c:5:28: error: 'test_array' declared as an array with a negative size
    static int test_array [1 - 2 * !(((long) (sizeof (npy_check_sizeof_type))) <= 31)];
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
1 error generated.
_configtest.c:5:28: error: 'test_array' declared as an array with a negative size
    static int test_array [1 - 2 * !(((long) (sizeof (npy_check_sizeof_type))) <= 31)];
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
1 error generated.
_configtest.c:7:28: error: 'test_array' declared as an array with a negative size
    static int test_array [1 - 2 * !(((long) (sizeof (npy_check_sizeof_type))) == 4)];
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
1 error generated.
_configtest.c:7:28: error: 'test_array' declared as an array with a negative size
    static int test_array [1 - 2 * !(((long) (sizeof (npy_check_sizeof_type))) == 4)];
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
1 error generated.
_configtest.c:1:5: warning: incompatible redeclaration of library function 'exp' [-Wincompatible-library-redeclaration]
int exp (void);
    ^
_configtest.c:1:5: note: 'exp' is a builtin with type 'double (double)'
1 warning generated.
_configtest.c:1:5: warning: incompatible redeclaration of library function 'asin' [-Wincompatible-library-redeclaration]
int asin (void);
    ^
_configtest.c:1:5: note: 'asin' is a builtin with type 'double (double)'
_configtest.c:2:5: warning: incompatible redeclaration of library function 'cos' [-Wincompatible-library-redeclaration]
int cos (void);
    ^
_configtest.c:2:5: note: 'cos' is a builtin with type 'double (double)'
_configtest.c:3:5: warning: incompatible redeclaration of library function 'log' [-Wincompatible-library-redeclaration]
int log (void);
    ^
_configtest.c:3:5: note: 'log' is a builtin with type 'double (double)'
_configtest.c:4:5: warning: incompatible redeclaration of library function 'fabs' [-Wincompatible-library-redeclaration]
int fabs (void);
    ^
_configtest.c:4:5: note: 'fabs' is a builtin with type 'double (double)'
_configtest.c:6:5: warning: incompatible redeclaration of library function 'atan' [-Wincompatible-library-redeclaration]
int atan (void);
    ^
_configtest.c:6:5: note: 'atan' is a builtin with type 'double (double)'
_configtest.c:7:5: warning: incompatible redeclaration of library function 'acos' [-Wincompatible-library-redeclaration]
int acos (void);
    ^
_configtest.c:7:5: note: 'acos' is a builtin with type 'double (double)'
_configtest.c:8:5: warning: incompatible redeclaration of library function 'floor' [-Wincompatible-library-redeclaration]
int floor (void);
    ^
_configtest.c:8:5: note: 'floor' is a builtin with type 'double (double)'
_configtest.c:10:5: warning: incompatible redeclaration of library function 'sqrt' [-Wincompatible-library-redeclaration]
int sqrt (void);
    ^
_configtest.c:10:5: note: 'sqrt' is a builtin with type 'double (double)'
_configtest.c:15:5: warning: incompatible redeclaration of library function 'exp' [-Wincompatible-library-redeclaration]
int exp (void);
    ^
_configtest.c:15:5: note: 'exp' is a builtin with type 'double (double)'
_configtest.c:16:5: warning: incompatible redeclaration of library function 'tan' [-Wincompatible-library-redeclaration]
int tan (void);
    ^
_configtest.c:16:5: note: 'tan' is a builtin with type 'double (double)'
_configtest.c:17:5: warning: incompatible redeclaration of library function 'ceil' [-Wincompatible-library-redeclaration]
int ceil (void);
    ^
_configtest.c:17:5: note: 'ceil' is a builtin with type 'double (double)'
_configtest.c:19:5: warning: incompatible redeclaration of library function 'sin' [-Wincompatible-library-redeclaration]
int sin (void);
    ^
_configtest.c:19:5: note: 'sin' is a builtin with type 'double (double)'
12 warnings generated.
_configtest.c:1:5: warning: incompatible redeclaration of library function 'log2' [-Wincompatible-library-redeclaration]
int log2 (void);
    ^
_configtest.c:1:5: note: 'log2' is a builtin with type 'double (double)'
_configtest.c:2:5: warning: incompatible redeclaration of library function 'pow' [-Wincompatible-library-redeclaration]
int pow (void);
    ^
_configtest.c:2:5: note: 'pow' is a builtin with type 'double (double, double)'
_configtest.c:3:5: warning: incompatible redeclaration of library function 'exp2' [-Wincompatible-library-redeclaration]
int exp2 (void);
    ^
_configtest.c:3:5: note: 'exp2' is a builtin with type 'double (double)'
_configtest.c:4:5: warning: incompatible redeclaration of library function 'atan2' [-Wincompatible-library-redeclaration]
int atan2 (void);
    ^
_configtest.c:4:5: note: 'atan2' is a builtin with type 'double (double, double)'
_configtest.c:5:5: warning: incompatible redeclaration of library function 'rint' [-Wincompatible-library-redeclaration]
int rint (void);
    ^
_configtest.c:5:5: note: 'rint' is a builtin with type 'double (double)'
_configtest.c:7:5: warning: incompatible redeclaration of library function 'trunc' [-Wincompatible-library-redeclaration]
int trunc (void);
    ^
_configtest.c:7:5: note: 'trunc' is a builtin with type 'double (double)'
6 warnings generated.
_configtest.c:5:3: warning: ignoring return value of function declared with const attribute [-Wunused-value]
  __builtin_isnan(5.);
  ^~~~~~~~~~~~~~~ ~~
1 warning generated.
_configtest.c:5:3: warning: ignoring return value of function declared with const attribute [-Wunused-value]
  __builtin_isinf(5.);
  ^~~~~~~~~~~~~~~ ~~
1 warning generated.
_configtest.c:5:3: warning: ignoring return value of function declared with const attribute [-Wunused-value]
  __builtin_isfinite(5.);
  ^~~~~~~~~~~~~~~~~~ ~~
1 warning generated.
_configtest.c:5:3: warning: ignoring return value of function declared with const attribute [-Wunused-value]
  __builtin_bswap32(5u);
  ^~~~~~~~~~~~~~~~~ ~~
1 warning generated.
_configtest.c:5:3: warning: ignoring return value of function declared with const attribute [-Wunused-value]
  __builtin_bswap64(5u);
  ^~~~~~~~~~~~~~~~~ ~~
1 warning generated.
_configtest.c:5:3: warning: ignoring return value of function declared with const attribute [-Wunused-value]
  __builtin_expect(5, 0);
  ^~~~~~~~~~~~~~~~ ~~~~
1 warning generated.
_configtest.c:1:20: warning: unknown attribute 'optimize' ignored [-Wattributes]
int __attribute__((optimize("unroll-loops"))) attribute_optimize_unroll_loops (void);
                   ^
_configtest.c:6:3: warning: expression result unused [-Wunused-value]
  attribute_optimize_unroll_loops;
  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
2 warnings generated.
_configtest.c:1:5: warning: incompatible redeclaration of library function 'cosf' [-Wincompatible-library-redeclaration]
int cosf (void);
    ^
_configtest.c:1:5: note: 'cosf' is a builtin with type 'float (float)'
_configtest.c:3:5: warning: incompatible redeclaration of library function 'rintf' [-Wincompatible-library-redeclaration]
int rintf (void);
    ^
_configtest.c:3:5: note: 'rintf' is a builtin with type 'float (float)'
_configtest.c:4:5: warning: incompatible redeclaration of library function 'fabsf' [-Wincompatible-library-redeclaration]
int fabsf (void);
    ^
_configtest.c:4:5: note: 'fabsf' is a builtin with type 'float (float)'
_configtest.c:5:5: warning: incompatible redeclaration of library function 'floorf' [-Wincompatible-library-redeclaration]
int floorf (void);
    ^
_configtest.c:5:5: note: 'floorf' is a builtin with type 'float (float)'
_configtest.c:9:5: warning: incompatible redeclaration of library function 'logf' [-Wincompatible-library-redeclaration]
int logf (void);
    ^
_configtest.c:9:5: note: 'logf' is a builtin with type 'float (float)'
_configtest.c:11:5: warning: incompatible redeclaration of library function 'acosf' [-Wincompatible-library-redeclaration]
int acosf (void);
    ^
_configtest.c:11:5: note: 'acosf' is a builtin with type 'float (float)'
_configtest.c:12:5: warning: incompatible redeclaration of library function 'sqrtf' [-Wincompatible-library-redeclaration]
int sqrtf (void);
    ^
_configtest.c:12:5: note: 'sqrtf' is a builtin with type 'float (float)'
_configtest.c:15:5: warning: incompatible redeclaration of library function 'log2f' [-Wincompatible-library-redeclaration]
int log2f (void);
    ^
_configtest.c:15:5: note: 'log2f' is a builtin with type 'float (float)'
_configtest.c:16:5: warning: incompatible redeclaration of library function 'exp2f' [-Wincompatible-library-redeclaration]
int exp2f (void);
    ^
_configtest.c:16:5: note: 'exp2f' is a builtin with type 'float (float)'
_configtest.c:17:5: warning: incompatible redeclaration of library function 'atanf' [-Wincompatible-library-redeclaration]
int atanf (void);
    ^
_configtest.c:17:5: note: 'atanf' is a builtin with type 'float (float)'
_configtest.c:19:5: warning: incompatible redeclaration of library function 'atan2f' [-Wincompatible-library-redeclaration]
int atan2f (void);
    ^
_configtest.c:19:5: note: 'atan2f' is a builtin with type 'float (float, float)'
_configtest.c:21:5: warning: incompatible redeclaration of library function 'ceilf' [-Wincompatible-library-redeclaration]
int ceilf (void);
    ^
_configtest.c:21:5: note: 'ceilf' is a builtin with type 'float (float)'
_configtest.c:23:5: warning: incompatible redeclaration of library function 'asinf' [-Wincompatible-library-redeclaration]
int asinf (void);
    ^
_configtest.c:23:5: note: 'asinf' is a builtin with type 'float (float)'
_configtest.c:24:5: warning: incompatible redeclaration of library function 'copysignf' [-Wincompatible-library-redeclaration]
int copysignf (void);
    ^
_configtest.c:24:5: note: 'copysignf' is a builtin with type 'float (float, float)'
_configtest.c:26:5: warning: incompatible redeclaration of library function 'sinf' [-Wincompatible-library-redeclaration]
int sinf (void);
    ^
_configtest.c:26:5: note: 'sinf' is a builtin with type 'float (float)'
_configtest.c:27:5: warning: incompatible redeclaration of library function 'tanf' [-Wincompatible-library-redeclaration]
int tanf (void);
    ^
_configtest.c:27:5: note: 'tanf' is a builtin with type 'float (float)'
_configtest.c:29:5: warning: incompatible redeclaration of library function 'truncf' [-Wincompatible-library-redeclaration]
int truncf (void);
    ^
_configtest.c:29:5: note: 'truncf' is a builtin with type 'float (float)'
_configtest.c:32:5: warning: incompatible redeclaration of library function 'powf' [-Wincompatible-library-redeclaration]
int powf (void);
    ^
_configtest.c:32:5: note: 'powf' is a builtin with type 'float (float, float)'
_configtest.c:33:5: warning: incompatible redeclaration of library function 'expf' [-Wincompatible-library-redeclaration]
int expf (void);
    ^
_configtest.c:33:5: note: 'expf' is a builtin with type 'float (float)'
19 warnings generated.
_configtest.c:5:5: warning: incompatible redeclaration of library function 'cosl' [-Wincompatible-library-redeclaration]
int cosl (void);
    ^
_configtest.c:5:5: note: 'cosl' is a builtin with type 'long double (long double)'
_configtest.c:6:5: warning: incompatible redeclaration of library function 'floorl' [-Wincompatible-library-redeclaration]
int floorl (void);
    ^
_configtest.c:6:5: note: 'floorl' is a builtin with type 'long double (long double)'
_configtest.c:7:5: warning: incompatible redeclaration of library function 'rintl' [-Wincompatible-library-redeclaration]
int rintl (void);
    ^
_configtest.c:7:5: note: 'rintl' is a builtin with type 'long double (long double)'
_configtest.c:8:5: warning: incompatible redeclaration of library function 'fabsl' [-Wincompatible-library-redeclaration]
int fabsl (void);
    ^
_configtest.c:8:5: note: 'fabsl' is a builtin with type 'long double (long double)'
_configtest.c:9:5: warning: incompatible redeclaration of library function 'acosl' [-Wincompatible-library-redeclaration]
int acosl (void);
    ^
_configtest.c:9:5: note: 'acosl' is a builtin with type 'long double (long double)'
_configtest.c:11:5: warning: incompatible redeclaration of library function 'sqrtl' [-Wincompatible-library-redeclaration]
int sqrtl (void);
    ^
_configtest.c:11:5: note: 'sqrtl' is a builtin with type 'long double (long double)'
_configtest.c:12:5: warning: incompatible redeclaration of library function 'logl' [-Wincompatible-library-redeclaration]
int logl (void);
    ^
_configtest.c:12:5: note: 'logl' is a builtin with type 'long double (long double)'
_configtest.c:15:5: warning: incompatible redeclaration of library function 'log2l' [-Wincompatible-library-redeclaration]
int log2l (void);
    ^
_configtest.c:15:5: note: 'log2l' is a builtin with type 'long double (long double)'
_configtest.c:16:5: warning: incompatible redeclaration of library function 'copysignl' [-Wincompatible-library-redeclaration]
int copysignl (void);
    ^
_configtest.c:16:5: note: 'copysignl' is a builtin with type 'long double (long double, long double)'
_configtest.c:17:5: warning: incompatible redeclaration of library function 'exp2l' [-Wincompatible-library-redeclaration]
int exp2l (void);
    ^
_configtest.c:17:5: note: 'exp2l' is a builtin with type 'long double (long double)'
_configtest.c:18:5: warning: incompatible redeclaration of library function 'atanl' [-Wincompatible-library-redeclaration]
int atanl (void);
    ^
_configtest.c:18:5: note: 'atanl' is a builtin with type 'long double (long double)'
_configtest.c:20:5: warning: incompatible redeclaration of library function 'atan2l' [-Wincompatible-library-redeclaration]
int atan2l (void);
    ^
_configtest.c:20:5: note: 'atan2l' is a builtin with type 'long double (long double, long double)'
_configtest.c:24:5: warning: incompatible redeclaration of library function 'asinl' [-Wincompatible-library-redeclaration]
int asinl (void);
    ^
_configtest.c:24:5: note: 'asinl' is a builtin with type 'long double (long double)'
_configtest.c:25:5: warning: incompatible redeclaration of library function 'ceill' [-Wincompatible-library-redeclaration]
int ceill (void);
    ^
_configtest.c:25:5: note: 'ceill' is a builtin with type 'long double (long double)'
_configtest.c:26:5: warning: incompatible redeclaration of library function 'sinl' [-Wincompatible-library-redeclaration]
int sinl (void);
    ^
_configtest.c:26:5: note: 'sinl' is a builtin with type 'long double (long double)'
_configtest.c:29:5: warning: incompatible redeclaration of library function 'tanl' [-Wincompatible-library-redeclaration]
int tanl (void);
    ^
_configtest.c:29:5: note: 'tanl' is a builtin with type 'long double (long double)'
_configtest.c:30:5: warning: incompatible redeclaration of library function 'truncl' [-Wincompatible-library-redeclaration]
int truncl (void);
    ^
_configtest.c:30:5: note: 'truncl' is a builtin with type 'long double (long double)'
_configtest.c:31:5: warning: incompatible redeclaration of library function 'powl' [-Wincompatible-library-redeclaration]
int powl (void);
    ^
_configtest.c:31:5: note: 'powl' is a builtin with type 'long double (long double, long double)'
_configtest.c:32:5: warning: incompatible redeclaration of library function 'expl' [-Wincompatible-library-redeclaration]
int expl (void);
    ^
_configtest.c:32:5: note: 'expl' is a builtin with type 'long double (long double)'
19 warnings generated.
_configtest.c:8:12: error: use of undeclared identifier 'HAVE_DECL_SIGNBIT'
    (void) HAVE_DECL_SIGNBIT;
           ^
1 error generated.
_configtest.c:8:12: error: use of undeclared identifier 'HAVE_DECL_SIGNBIT'
    (void) HAVE_DECL_SIGNBIT;
           ^
1 error generated.
_configtest.c:4:5: warning: incompatible redeclaration of library function 'cimag' [-Wincompatible-library-redeclaration]
int cimag (void);
    ^
_configtest.c:4:5: note: 'cimag' is a builtin with type 'double (_Complex double)'
_configtest.c:9:5: warning: incompatible redeclaration of library function 'creal' [-Wincompatible-library-redeclaration]
int creal (void);
    ^
_configtest.c:9:5: note: 'creal' is a builtin with type 'double (_Complex double)'
2 warnings generated.
_configtest.c:6:5: warning: incompatible redeclaration of library function 'crealf' [-Wincompatible-library-redeclaration]
int crealf (void);
    ^
_configtest.c:6:5: note: 'crealf' is a builtin with type 'float (_Complex float)'
_configtest.c:10:5: warning: incompatible redeclaration of library function 'cimagf' [-Wincompatible-library-redeclaration]
int cimagf (void);
    ^
_configtest.c:10:5: note: 'cimagf' is a builtin with type 'float (_Complex float)'
2 warnings generated.
_configtest.c:6:5: warning: incompatible redeclaration of library function 'cimagl' [-Wincompatible-library-redeclaration]
int cimagl (void);
    ^
_configtest.c:6:5: note: 'cimagl' is a builtin with type 'long double (_Complex long double)'
_configtest.c:8:5: warning: incompatible redeclaration of library function 'creall' [-Wincompatible-library-redeclaration]
int creall (void);
    ^
_configtest.c:8:5: note: 'creall' is a builtin with type 'long double (_Complex long double)'
2 warnings generated.
_configtest.c:7:12: error: use of undeclared identifier 'Py_UNICODE_WIDE'; did you mean 'Py_UNICODE'?
    (void) Py_UNICODE_WIDE;
           ^
1 error generated.
_configtest.c:7:12: error: use of undeclared identifier 'Py_UNICODE_WIDE'; did you mean 'Py_UNICODE'?
    (void) Py_UNICODE_WIDE;
           ^
1 error generated.
File: build/src.macosx-10.9-x86_64-2.7/numpy/core/include/numpy/config.h
#define SIZEOF_PY_INTPTR_T 8
#define SIZEOF_PY_LONG_LONG 8
#define MATHLIB 
#define HAVE_SIN 1
#define HAVE_COS 1
#define HAVE_TAN 1
#define HAVE_SINH 1
#define HAVE_COSH 1
#define HAVE_TANH 1
#define HAVE_FABS 1
#define HAVE_FLOOR 1
#define HAVE_CEIL 1
#define HAVE_SQRT 1
#define HAVE_LOG10 1
#define HAVE_LOG 1
#define HAVE_EXP 1
#define HAVE_ASIN 1
#define HAVE_ACOS 1
#define HAVE_ATAN 1
#define HAVE_FMOD 1
#define HAVE_MODF 1
#define HAVE_FREXP 1
#define HAVE_LDEXP 1
#define HAVE_RINT 1
#define HAVE_TRUNC 1
#define HAVE_EXP2 1
#define HAVE_LOG2 1
#define HAVE_ATAN2 1
#define HAVE_POW 1
#define HAVE_NEXTAFTER 1
#define HAVE_XMMINTRIN_H 1
#define HAVE_EMMINTRIN_H 1
#define HAVE___BUILTIN_ISNAN 1
#define HAVE___BUILTIN_ISINF 1
#define HAVE___BUILTIN_ISFINITE 1
#define HAVE___BUILTIN_BSWAP32 1
#define HAVE___BUILTIN_BSWAP64 1
#define HAVE___BUILTIN_EXPECT 1
#define HAVE__MM_LOAD_PS 1
#define HAVE__MM_LOAD_PD 1
#define HAVE_ATTRIBUTE_OPTIMIZE_UNROLL_LOOPS 1
#define HAVE_SINF 1
#define HAVE_COSF 1
#define HAVE_TANF 1
#define HAVE_SINHF 1
#define HAVE_COSHF 1
#define HAVE_TANHF 1
#define HAVE_FABSF 1
#define HAVE_FLOORF 1
#define HAVE_CEILF 1
#define HAVE_RINTF 1
#define HAVE_TRUNCF 1
#define HAVE_SQRTF 1
#define HAVE_LOG10F 1
#define HAVE_LOGF 1
#define HAVE_LOG1PF 1
#define HAVE_EXPF 1
#define HAVE_EXPM1F 1
#define HAVE_ASINF 1
#define HAVE_ACOSF 1
#define HAVE_ATANF 1
#define HAVE_ASINHF 1
#define HAVE_ACOSHF 1
#define HAVE_ATANHF 1
#define HAVE_HYPOTF 1
#define HAVE_ATAN2F 1
#define HAVE_POWF 1
#define HAVE_FMODF 1
#define HAVE_MODFF 1
#define HAVE_FREXPF 1
#define HAVE_LDEXPF 1
#define HAVE_EXP2F 1
#define HAVE_LOG2F 1
#define HAVE_COPYSIGNF 1
#define HAVE_NEXTAFTERF 1
#define HAVE_SINL 1
#define HAVE_COSL 1
#define HAVE_TANL 1
#define HAVE_SINHL 1
#define HAVE_COSHL 1
#define HAVE_TANHL 1
#define HAVE_FABSL 1
#define HAVE_FLOORL 1
#define HAVE_CEILL 1
#define HAVE_RINTL 1
#define HAVE_TRUNCL 1
#define HAVE_SQRTL 1
#define HAVE_LOG10L 1
#define HAVE_LOGL 1
#define HAVE_LOG1PL 1
#define HAVE_EXPL 1
#define HAVE_EXPM1L 1
#define HAVE_ASINL 1
#define HAVE_ACOSL 1
#define HAVE_ATANL 1
#define HAVE_ASINHL 1
#define HAVE_ACOSHL 1
#define HAVE_ATANHL 1
#define HAVE_HYPOTL 1
#define HAVE_ATAN2L 1
#define HAVE_POWL 1
#define HAVE_FMODL 1
#define HAVE_MODFL 1
#define HAVE_FREXPL 1
#define HAVE_LDEXPL 1
#define HAVE_EXP2L 1
#define HAVE_LOG2L 1
#define HAVE_COPYSIGNL 1
#define HAVE_NEXTAFTERL 1
#define HAVE_DECL_SIGNBIT
#define HAVE_COMPLEX_H 1
#define HAVE_CREAL 1
#define HAVE_CIMAG 1
#define HAVE_CABS 1
#define HAVE_CARG 1
#define HAVE_CEXP 1
#define HAVE_CSQRT 1
#define HAVE_CLOG 1
#define HAVE_CCOS 1
#define HAVE_CSIN 1
#define HAVE_CPOW 1
#define HAVE_CREALF 1
#define HAVE_CIMAGF 1
#define HAVE_CABSF 1
#define HAVE_CARGF 1
#define HAVE_CEXPF 1
#define HAVE_CSQRTF 1
#define HAVE_CLOGF 1
#define HAVE_CCOSF 1
#define HAVE_CSINF 1
#define HAVE_CPOWF 1
#define HAVE_CREALL 1
#define HAVE_CIMAGL 1
#define HAVE_CABSL 1
#define HAVE_CARGL 1
#define HAVE_CEXPL 1
#define HAVE_CSQRTL 1
#define HAVE_CLOGL 1
#define HAVE_CCOSL 1
#define HAVE_CSINL 1
#define HAVE_CPOWL 1
#define ENABLE_SEPARATE_COMPILATION 1
#ifndef __cplusplus
/* #undef inline */
#endif

#ifndef _NPY_NPY_CONFIG_H_
#error config.h should never be included directly, include npy_config.h instead
#endif

EOF
_configtest.c:1:5: warning: incompatible redeclaration of library function 'exp' [-Wincompatible-library-redeclaration]
int exp (void);
    ^
_configtest.c:1:5: note: 'exp' is a builtin with type 'double (double)'
1 warning generated.
_configtest.c:5:18: warning: extra tokens at end of #ifndef directive [-Wextra-tokens]
#ifndef __GNUC__ && (__GNUC__ >= 4)
                 ^
                 //
1 warning generated.
File: build/src.macosx-10.9-x86_64-2.7/numpy/core/include/numpy/_numpyconfig.h
#define NPY_SIZEOF_SHORT SIZEOF_SHORT
#define NPY_SIZEOF_INT SIZEOF_INT
#define NPY_SIZEOF_LONG SIZEOF_LONG
#define NPY_SIZEOF_FLOAT 4
#define NPY_SIZEOF_COMPLEX_FLOAT 8
#define NPY_SIZEOF_DOUBLE 8
#define NPY_SIZEOF_COMPLEX_DOUBLE 16
#define NPY_SIZEOF_LONGDOUBLE 16
#define NPY_SIZEOF_COMPLEX_LONGDOUBLE 32
#define NPY_SIZEOF_PY_INTPTR_T 8
#define NPY_SIZEOF_PY_LONG_LONG 8
#define NPY_SIZEOF_LONGLONG 8
#define NPY_NO_SMP 0
#define NPY_HAVE_DECL_ISNAN
#define NPY_HAVE_DECL_ISINF
#define NPY_HAVE_DECL_ISFINITE
#define NPY_HAVE_DECL_SIGNBIT
#define NPY_USE_C99_COMPLEX 1
#define NPY_HAVE_COMPLEX_DOUBLE 1
#define NPY_HAVE_COMPLEX_FLOAT 1
#define NPY_HAVE_COMPLEX_LONG_DOUBLE 1
#define NPY_ENABLE_SEPARATE_COMPILATION 1
#define NPY_USE_C99_FORMATS 1
#define NPY_VISIBILITY_HIDDEN __attribute__((visibility("hidden")))
#define NPY_ABI_VERSION 0x01000009
#define NPY_API_VERSION 0x00000009

#ifndef __STDC_FORMAT_MACROS
#define __STDC_FORMAT_MACROS 1
#endif

EOF
warning: no files found matching 'tools/py3tool.py'
warning: no files found matching '*' under directory 'doc/sphinxext'
In file included from /private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/core/src/npysort/selection.c.src:22:
/private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/core/src/private/npy_partition.h:104:15: warning: comparison of constant 1 with expression of type 'NPY_SELECTKIND' is always false [-Wtautological-constant-out-of-range-compare]
    if (which >= NPY_NSELECTS) {
        ~~~~~ ^  ~~~~~~~~~~~~
/private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/core/src/private/npy_partition.h:120:15: warning: comparison of constant 1 with expression of type 'NPY_SELECTKIND' is always false [-Wtautological-constant-out-of-range-compare]
    if (which >= NPY_NSELECTS) {
        ~~~~~ ^  ~~~~~~~~~~~~
2 warnings generated.
In file included from /private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/core/src/dummymodule.c:11:
In file included from /private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/core/src/private/npy_pycompat.h:4:
In file included from /private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/core/include/numpy/npy_3kcompat.h:23:
In file included from /private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/core/include/numpy/ndarrayobject.h:26:
build/src.macosx-10.9-x86_64-2.7/numpy/core/include/numpy/__multiarray_api.h:1629:1: warning: unused function '_import_array' [-Wunused-function]
_import_array(void)
^
1 warning generated.
/private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/core/src/multiarray/nditer_api.c:1840:12: warning: unused variable 'ptrs' [-Wunused-variable]
    char **ptrs = NBF_PTRS(bufferdata), **ad_ptrs = NAD_PTRS(axisdata);
           ^
/private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/core/src/multiarray/nditer_api.c:1836:17: warning: unused variable 'buffersize' [-Wunused-variable]
                buffersize = NBF_BUFFERSIZE(bufferdata);
                ^
2 warnings generated.
/private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/core/src/multiarray/scalartypes.c.src:808:27: warning: comparison of unsigned enum expression >= 0 is always true [-Wtautological-compare]
    if (scal->obmeta.base >= 0 && scal->obmeta.base < NPY_DATETIME_NUMUNITS) {
        ~~~~~~~~~~~~~~~~~ ^  ~
/private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/core/src/multiarray/scalartypes.c.src:2632:30: warning: comparison of constant -1 with expression of type 'NPY_DATETIMEUNIT' is always false [-Wtautological-constant-out-of-range-compare]
        if (ret->obmeta.base == -1) {
            ~~~~~~~~~~~~~~~~ ^  ~~
/private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/core/src/multiarray/scalartypes.c.src:2632:30: warning: comparison of constant -1 with expression of type 'NPY_DATETIMEUNIT' is always false [-Wtautological-constant-out-of-range-compare]
        if (ret->obmeta.base == -1) {
            ~~~~~~~~~~~~~~~~ ^  ~~
/private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/core/src/multiarray/scalartypes.c.src:2933:1: warning: unused function 'longlong_arrtype_hash' [-Wunused-function]
longlong_arrtype_hash(PyObject *obj)
^
4 warnings generated.
/private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/core/src/multiarray/conversion_utils.c:882:2: warning: unused label 'overflow_check' [-Wunused-label]
 overflow_check:
 ^~~~~~~~~~~~~~~
1 warning generated.
/private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/core/src/multiarray/array_assign_array.c:384:1: warning: unused label 'finish' [-Wunused-label]
finish:
^~~~~~~
1 warning generated.
/private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/core/src/multiarray/mapping.c:1478:20: warning: incompatible pointer types assigning to 'PyArrayObject *' (aka 'struct tagPyArrayObject *') from 'PyObject *' (aka 'struct _object *') [-Wincompatible-pointer-types]
            op_arr = op;
                   ^ ~~
/private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/core/src/multiarray/mapping.c:1821:26: warning: incompatible pointer types passing 'PyObject *' (aka 'struct _object *') to parameter of type 'const PyArrayObject *' (aka 'const struct tagPyArrayObject *') [-Wincompatible-pointer-types]
    subnd = PyArray_NDIM(sub);
                         ^~~
/private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/core/include/numpy/ndarraytypes.h:1410:35: note: passing argument to parameter 'arr' here
PyArray_NDIM(const PyArrayObject *arr)
                                  ^
/private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/core/src/multiarray/mapping.c:2005:51: warning: incompatible pointer types passing 'PyObject *' (aka 'struct _object *') to parameter of type 'const PyArrayObject *' (aka 'const struct tagPyArrayObject *') [-Wincompatible-pointer-types]
    if (PyArray_Check(indexobj) && PyArray_ISBOOL(indexobj)
                                                  ^~~~~~~~
/private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/core/include/numpy/ndarraytypes.h:1631:59: note: expanded from macro 'PyArray_ISBOOL'
#define PyArray_ISBOOL(obj) PyTypeNum_ISBOOL(PyArray_TYPE(obj))
                                                          ^
/private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/core/include/numpy/ndarraytypes.h:1562:34: note: expanded from macro 'PyTypeNum_ISBOOL'
#define PyTypeNum_ISBOOL(type) ((type) == NPY_BOOL)
                                 ^
/private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/core/include/numpy/ndarraytypes.h:1476:35: note: passing argument to parameter 'arr' here
PyArray_TYPE(const PyArrayObject *arr)
                                  ^
/private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/core/src/multiarray/mapping.c:2145:12: warning: incompatible pointer types returning 'PyArrayMapIterObject *' from a function with result type 'PyObject *' (aka 'struct _object *') [-Wincompatible-pointer-types]
    return mit;
           ^~~
4 warnings generated.
/private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/core/src/multiarray/datetime.c:781:24: warning: comparison of constant -1 with expression of type 'NPY_DATETIMEUNIT' is always false [-Wtautological-constant-out-of-range-compare]
    if (out_meta->base == -1) {
        ~~~~~~~~~~~~~~ ^  ~~
/private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/core/src/multiarray/datetime.c:1849:24: warning: comparison of constant -1 with expression of type 'NPY_DATETIMEUNIT' is always false [-Wtautological-constant-out-of-range-compare]
    if (out_meta->base == -1) {
        ~~~~~~~~~~~~~~ ^  ~~
/private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/core/src/multiarray/datetime.c:1974:20: warning: comparison of unsigned enum expression >= 0 is always true [-Wtautological-compare]
    if (meta->base >= 0 && meta->base < NPY_DATETIME_NUMUNITS) {
        ~~~~~~~~~~ ^  ~
/private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/core/src/multiarray/datetime.c:2386:24: warning: comparison of constant -1 with expression of type 'NPY_DATETIMEUNIT' is always false [-Wtautological-constant-out-of-range-compare]
        if (meta->base == -1) {
            ~~~~~~~~~~ ^  ~~
/private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/core/src/multiarray/datetime.c:2400:24: warning: comparison of constant -1 with expression of type 'NPY_DATETIMEUNIT' is always false [-Wtautological-constant-out-of-range-compare]
        if (meta->base == -1 || meta->base == NPY_FR_GENERIC) {
            ~~~~~~~~~~ ^  ~~
/private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/core/src/multiarray/datetime.c:2413:24: warning: comparison of constant -1 with expression of type 'NPY_DATETIMEUNIT' is always false [-Wtautological-constant-out-of-range-compare]
        if (meta->base == -1) {
            ~~~~~~~~~~ ^  ~~
/private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/core/src/multiarray/datetime.c:2452:24: warning: comparison of constant -1 with expression of type 'NPY_DATETIMEUNIT' is always false [-Wtautological-constant-out-of-range-compare]
        if (meta->base == -1) {
            ~~~~~~~~~~ ^  ~~
/private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/core/src/multiarray/datetime.c:2484:28: warning: comparison of constant -1 with expression of type 'NPY_DATETIMEUNIT' is always false [-Wtautological-constant-out-of-range-compare]
            if (meta->base == -1) {
                ~~~~~~~~~~ ^  ~~
/private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/core/src/multiarray/datetime.c:2511:24: warning: comparison of constant -1 with expression of type 'NPY_DATETIMEUNIT' is always false [-Wtautological-constant-out-of-range-compare]
        if (meta->base == -1) {
            ~~~~~~~~~~ ^  ~~
/private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/core/src/multiarray/datetime.c:2586:28: warning: comparison of constant -1 with expression of type 'NPY_DATETIMEUNIT' is always false [-Wtautological-constant-out-of-range-compare]
            if (meta->base == -1) {
                ~~~~~~~~~~ ^  ~~
/private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/core/src/multiarray/datetime.c:2597:24: warning: comparison of constant -1 with expression of type 'NPY_DATETIMEUNIT' is always false [-Wtautological-constant-out-of-range-compare]
        if (meta->base == -1) {
            ~~~~~~~~~~ ^  ~~
/private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/core/src/multiarray/datetime.c:2610:24: warning: comparison of constant -1 with expression of type 'NPY_DATETIMEUNIT' is always false [-Wtautological-constant-out-of-range-compare]
        if (meta->base == -1) {
            ~~~~~~~~~~ ^  ~~
/private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/core/src/multiarray/datetime.c:2649:24: warning: comparison of constant -1 with expression of type 'NPY_DATETIMEUNIT' is always false [-Wtautological-constant-out-of-range-compare]
        if (meta->base == -1) {
            ~~~~~~~~~~ ^  ~~
/private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/core/src/multiarray/datetime.c:2718:24: warning: comparison of constant -1 with expression of type 'NPY_DATETIMEUNIT' is always false [-Wtautological-constant-out-of-range-compare]
        if (meta->base == -1) {
            ~~~~~~~~~~ ^  ~~
/private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/core/src/multiarray/datetime.c:2772:24: warning: comparison of constant -1 with expression of type 'NPY_DATETIMEUNIT' is always false [-Wtautological-constant-out-of-range-compare]
        if (meta->base == -1) {
            ~~~~~~~~~~ ^  ~~
/private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/core/src/multiarray/datetime.c:3108:26: warning: comparison of constant -1 with expression of type 'NPY_DATETIMEUNIT' is always false [-Wtautological-constant-out-of-range-compare]
    if (inout_meta->base == -1) {
        ~~~~~~~~~~~~~~~~ ^  ~~
16 warnings generated.
/private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/core/src/multiarray/datetime_strings.c:476:18: warning: comparison of constant -1 with expression of type 'NPY_DATETIMEUNIT' is always true [-Wtautological-constant-out-of-range-compare]
        if (unit != -1 && !can_cast_datetime64_units(bestunit, unit,
            ~~~~ ^  ~~
/private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/core/src/multiarray/datetime_strings.c:519:18: warning: comparison of constant -1 with expression of type 'NPY_DATETIMEUNIT' is always true [-Wtautological-constant-out-of-range-compare]
        if (unit != -1 && !can_cast_datetime64_units(bestunit, unit,
            ~~~~ ^  ~~
/private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/core/src/multiarray/datetime_strings.c:924:14: warning: comparison of constant -1 with expression of type 'NPY_DATETIMEUNIT' is always true [-Wtautological-constant-out-of-range-compare]
    if (unit != -1 && !can_cast_datetime64_units(bestunit, unit,
        ~~~~ ^  ~~
/private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/core/src/multiarray/datetime_strings.c:955:14: warning: comparison of constant -1 with expression of type 'NPY_DATETIMEUNIT' is always false [-Wtautological-constant-out-of-range-compare]
    if (base == -1) {
        ~~~~ ^  ~~
/private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/core/src/multiarray/datetime_strings.c:1119:14: warning: comparison of constant -1 with expression of type 'NPY_DATETIMEUNIT' is always false [-Wtautological-constant-out-of-range-compare]
    if (base == -1) {
        ~~~~ ^  ~~
/private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/core/src/multiarray/datetime_strings.c:1600:22: warning: comparison of constant -1 with expression of type 'NPY_DATETIMEUNIT' is always false [-Wtautological-constant-out-of-range-compare]
            if (unit == -1) {
                ~~~~ ^  ~~
/private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/core/src/multiarray/datetime_strings.c:1607:18: warning: comparison of constant -1 with expression of type 'NPY_DATETIMEUNIT' is always true [-Wtautological-constant-out-of-range-compare]
        if (unit != -1 && !can_cast_datetime64_units(meta->base, unit, casting)) {
            ~~~~ ^  ~~
7 warnings generated.
In file included from /private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/core/src/multiarray/item_selection.c:23:
/private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/core/src/private/npy_partition.h:104:15: warning: comparison of constant 1 with expression of type 'NPY_SELECTKIND' is always false [-Wtautological-constant-out-of-range-compare]
    if (which >= NPY_NSELECTS) {
        ~~~~~ ^  ~~~~~~~~~~~~
/private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/core/src/private/npy_partition.h:120:15: warning: comparison of constant 1 with expression of type 'NPY_SELECTKIND' is always false [-Wtautological-constant-out-of-range-compare]
    if (which >= NPY_NSELECTS) {
        ~~~~~ ^  ~~~~~~~~~~~~
/private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/core/src/multiarray/item_selection.c:1212:12: warning: incompatible pointer types assigning to 'PyArrayObject *' (aka 'struct tagPyArrayObject *') from 'PyObject *' (aka 'struct _object *') [-Wincompatible-pointer-types]
    kthrvl = PyArray_Cast(ktharray, NPY_INTP);
           ^ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/core/src/multiarray/item_selection.c:1259:12: warning: equality comparison with extraneous parentheses [-Wparentheses-equality]
    if ((n == 0)) {
         ~~^~~~
/private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/core/src/multiarray/item_selection.c:1259:12: note: remove extraneous parentheses around the comparison to silence this warning
    if ((n == 0)) {
        ~  ^   ~
/private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/core/src/multiarray/item_selection.c:1259:12: note: use '=' to turn this equality comparison into an assignment
    if ((n == 0)) {
           ^~
           =
4 warnings generated.
/private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/core/src/multiarray/number.c:224:48: warning: incompatible pointer types passing 'PyArrayObject *' (aka 'struct tagPyArrayObject *') to parameter of type 'PyObject *' (aka 'struct _object *') [-Wincompatible-pointer-types]
          double m1_prio = PyArray_GetPriority(m1, NPY_SCALAR_PRIORITY);
                                               ^~
build/src.macosx-10.9-x86_64-2.7/numpy/core/include/numpy/__multiarray_api.h:370:19: note: passing argument to parameter here
       (PyObject *, double);
                  ^
1 warning generated.
/private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/core/src/multiarray/lowlevel_strided_loops.c.src:114:5: warning: unknown attribute 'optimize' ignored [-Wattributes]
    NPY_GCC_UNROLL_LOOPS
    ^
/private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/core/include/numpy/npy_common.h:16:20: note: expanded from macro 'NPY_GCC_UNROLL_LOOPS'
    __attribute__((optimize("unroll-loops")))
                   ^
/private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/core/src/multiarray/lowlevel_strided_loops.c.src:114:5: warning: unknown attribute 'optimize' ignored [-Wattributes]
    NPY_GCC_UNROLL_LOOPS
    ^
/private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/core/include/numpy/npy_common.h:16:20: note: expanded from macro 'NPY_GCC_UNROLL_LOOPS'
    __attribute__((optimize("unroll-loops")))
                   ^
/private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/core/src/multiarray/lowlevel_strided_loops.c.src:114:5: warning: unknown attribute 'optimize' ignored [-Wattributes]
    NPY_GCC_UNROLL_LOOPS
    ^
/private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/core/include/numpy/npy_common.h:16:20: note: expanded from macro 'NPY_GCC_UNROLL_LOOPS'
    __attribute__((optimize("unroll-loops")))
                   ^
/private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/core/src/multiarray/lowlevel_strided_loops.c.src:114:5: warning: unknown attribute 'optimize' ignored [-Wattributes]
    NPY_GCC_UNROLL_LOOPS
    ^
/private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/core/include/numpy/npy_common.h:16:20: note: expanded from macro 'NPY_GCC_UNROLL_LOOPS'
    __attribute__((optimize("unroll-loops")))
                   ^
/private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/core/src/multiarray/lowlevel_strided_loops.c.src:114:5: warning: unknown attribute 'optimize' ignored [-Wattributes]
    NPY_GCC_UNROLL_LOOPS
    ^
/private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/core/include/numpy/npy_common.h:16:20: note: expanded from macro 'NPY_GCC_UNROLL_LOOPS'
    __attribute__((optimize("unroll-loops")))
                   ^
/private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/core/src/multiarray/lowlevel_strided_loops.c.src:114:5: warning: unknown attribute 'optimize' ignored [-Wattributes]
    NPY_GCC_UNROLL_LOOPS
    ^
/private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/core/include/numpy/npy_common.h:16:20: note: expanded from macro 'NPY_GCC_UNROLL_LOOPS'
    __attribute__((optimize("unroll-loops")))
                   ^
/private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/core/src/multiarray/lowlevel_strided_loops.c.src:114:5: warning: unknown attribute 'optimize' ignored [-Wattributes]
    NPY_GCC_UNROLL_LOOPS
    ^
/private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/core/include/numpy/npy_common.h:16:20: note: expanded from macro 'NPY_GCC_UNROLL_LOOPS'
    __attribute__((optimize("unroll-loops")))
                   ^
/private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/core/src/multiarray/lowlevel_strided_loops.c.src:114:5: warning: unknown attribute 'optimize' ignored [-Wattributes]
    NPY_GCC_UNROLL_LOOPS
    ^
/private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/core/include/numpy/npy_common.h:16:20: note: expanded from macro 'NPY_GCC_UNROLL_LOOPS'
    __attribute__((optimize("unroll-loops")))
                   ^
/private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/core/src/multiarray/lowlevel_strided_loops.c.src:114:5: warning: unknown attribute 'optimize' ignored [-Wattributes]
    NPY_GCC_UNROLL_LOOPS
    ^
/private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/core/include/numpy/npy_common.h:16:20: note: expanded from macro 'NPY_GCC_UNROLL_LOOPS'
    __attribute__((optimize("unroll-loops")))
                   ^
/private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/core/src/multiarray/lowlevel_strided_loops.c.src:114:5: warning: unknown attribute 'optimize' ignored [-Wattributes]
    NPY_GCC_UNROLL_LOOPS
    ^
/private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/core/include/numpy/npy_common.h:16:20: note: expanded from macro 'NPY_GCC_UNROLL_LOOPS'
    __attribute__((optimize("unroll-loops")))
                   ^
/private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/core/src/multiarray/lowlevel_strided_loops.c.src:114:5: warning: unknown attribute 'optimize' ignored [-Wattributes]
    NPY_GCC_UNROLL_LOOPS
    ^
/private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/core/include/numpy/npy_common.h:16:20: note: expanded from macro 'NPY_GCC_UNROLL_LOOPS'
    __attribute__((optimize("unroll-loops")))
                   ^
/private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/core/src/multiarray/lowlevel_strided_loops.c.src:114:5: warning: unknown attribute 'optimize' ignored [-Wattributes]
    NPY_GCC_UNROLL_LOOPS
    ^
/private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/core/include/numpy/npy_common.h:16:20: note: expanded from macro 'NPY_GCC_UNROLL_LOOPS'
    __attribute__((optimize("unroll-loops")))
                   ^
12 warnings generated.
/private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/core/src/multiarray/convert_datatype.c:228:63: warning: incompatible pointer types passing 'PyObject *' (aka 'struct _object *') to parameter of type 'PyArrayObject *' (aka 'struct tagPyArrayObject *') [-Wincompatible-pointer-types]
                            PyObject *scalar = PyArray_ToList(data_obj);
                                                              ^~~~~~~~
build/src.macosx-10.9-x86_64-2.7/numpy/core/include/numpy/__multiarray_api.h:348:24: note: passing argument to parameter here
       (PyArrayObject *);
                       ^
/private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/core/src/multiarray/convert_datatype.c:250:51: warning: incompatible pointer types passing 'PyObject *' (aka 'struct _object *') to parameter of type 'PyArrayObject *' (aka 'struct tagPyArrayObject *') [-Wincompatible-pointer-types]
                            list = PyArray_ToList(data_obj);
                                                  ^~~~~~~~
build/src.macosx-10.9-x86_64-2.7/numpy/core/include/numpy/__multiarray_api.h:348:24: note: passing argument to parameter here
       (PyArrayObject *);
                       ^
2 warnings generated.
In file included from /private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/core/src/umath/loops.c.src:14:
In file included from /private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/core/include/numpy/arrayobject.h:4:
In file included from /private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/core/include/numpy/ndarrayobject.h:26:
build/src.macosx-10.9-x86_64-2.7/numpy/core/include/numpy/__multiarray_api.h:1629:1: warning: unused function '_import_array' [-Wunused-function]
_import_array(void)
^
1 warning generated.
/private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/core/src/umath/ufunc_object.c:758:60: warning: incompatible pointer types passing 'PyObject *' (aka 'struct _object *') to parameter of type 'PyArrayObject *' (aka 'struct tagPyArrayObject *') [-Wincompatible-pointer-types]
            out_op[i] = (PyArrayObject *)PyArray_FromArray(obj,NULL,0);
                                                           ^~~
/private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/core/src/umath/ufunc_object.c:2792:29: warning: incompatible pointer types assigning to 'PyArray_AssignReduceIdentityFunc *' (aka 'int (*)(PyArrayObject *, void *)') from 'int (*)(PyArrayObject *)' [-Wincompatible-pointer-types]
            assign_identity = &assign_reduce_identity_zero;
                            ^ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/core/src/umath/ufunc_object.c:2803:29: warning: incompatible pointer types assigning to 'PyArray_AssignReduceIdentityFunc *' (aka 'int (*)(PyArrayObject *, void *)') from 'int (*)(PyArrayObject *)' [-Wincompatible-pointer-types]
            assign_identity = &assign_reduce_identity_one;
                            ^ ~~~~~~~~~~~~~~~~~~~~~~~~~~~
/private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/core/src/umath/ufunc_object.c:4915:15: warning: incompatible pointer types assigning to 'PyArrayObject *' (aka 'struct tagPyArrayObject *') from 'PyObject *' (aka 'struct _object *') [-Wincompatible-pointer-types]
    op1_array = op1;
              ^ ~~~
/private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/core/src/umath/ufunc_object.c:4917:10: warning: incompatible pointer types assigning to 'PyArrayMapIterObject *' from 'PyObject *' (aka 'struct _object *') [-Wincompatible-pointer-types]
    iter = PyArray_MapIterArray(op1_array, idx);
         ^ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/core/src/umath/ufunc_object.c:4990:23: warning: incompatible pointer types assigning to 'PyArrayObject *' (aka 'struct tagPyArrayObject *') from 'PyObject *' (aka 'struct _object *') [-Wincompatible-pointer-types]
    array_operands[0] = PyArray_NewFromDescr(&PyArray_Type,
                      ^ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/core/src/umath/ufunc_object.c:4996:27: warning: incompatible pointer types assigning to 'PyArrayObject *' (aka 'struct tagPyArrayObject *') from 'PyObject *' (aka 'struct _object *') [-Wincompatible-pointer-types]
        array_operands[1] = PyArray_NewFromDescr(&PyArray_Type,
                          ^ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/core/src/umath/ufunc_object.c:5002:27: warning: incompatible pointer types assigning to 'PyArrayObject *' (aka 'struct tagPyArrayObject *') from 'PyObject *' (aka 'struct _object *') [-Wincompatible-pointer-types]
        array_operands[2] = PyArray_NewFromDescr(&PyArray_Type,
                          ^ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/core/src/umath/ufunc_object.c:5010:27: warning: incompatible pointer types assigning to 'PyArrayObject *' (aka 'struct tagPyArrayObject *') from 'PyObject *' (aka 'struct _object *') [-Wincompatible-pointer-types]
        array_operands[1] = PyArray_NewFromDescr(&PyArray_Type,
                          ^ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
9 warnings generated.
/private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/core/src/umath/test_rational.c.src:859:1: warning: variable 'i' is uninitialized when used here [-Wuninitialized]
FIND_EXTREME(argmin,lt)
^~~~~~~~~~~~~~~~~~~~~~~
/private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/core/src/umath/test_rational.c.src:849:9: note: expanded from macro 'FIND_EXTREME'
        i; \
        ^
/private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/core/src/umath/test_rational.c.src:859:1: note: variable 'i' is declared here
/private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/core/src/umath/test_rational.c.src:842:9: note: expanded from macro 'FIND_EXTREME'
        npy_intp i; \
        ^
/private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/core/src/umath/test_rational.c.src:860:1: warning: variable 'i' is uninitialized when used here [-Wuninitialized]
FIND_EXTREME(argmax,gt)
^~~~~~~~~~~~~~~~~~~~~~~
/private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/core/src/umath/test_rational.c.src:849:9: note: expanded from macro 'FIND_EXTREME'
        i; \
        ^
/private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/core/src/umath/test_rational.c.src:860:1: note: variable 'i' is declared here
/private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/core/src/umath/test_rational.c.src:842:9: note: expanded from macro 'FIND_EXTREME'
        npy_intp i; \
        ^
2 warnings generated.
/private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/core/src/multiarray/multiarray_tests.c.src:481:38: warning: incompatible pointer types passing 'PyArrayObject *' (aka 'struct tagPyArrayObject *') to parameter of type 'PyObject *' (aka 'struct _object *') [-Wincompatible-pointer-types]
            PyArray_BroadcastToShape(arr, mit->dimensions, mit->nd)) == NULL) {
                                     ^~~
1 warning generated.
/private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/numarray/_capi.c:1102:42: warning: incompatible pointer types passing 'PyObject *' (aka 'struct _object *') to parameter of type 'PyArrayObject *' (aka 'struct tagPyArrayObject *') [-Wincompatible-pointer-types]
    if (PyArray_SetUpdateIfCopyBase(ret, a) < 0) {
                                         ^
1 warning generated.
/private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/linalg/umath_linalg.c.src:790:32: warning: unknown warning group '-Wmaybe-uninitialized', ignored [-Wunknown-pragmas]
#pragma GCC diagnostic ignored "-Wmaybe-uninitialized"
                               ^
/private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/linalg/umath_linalg.c.src:2318:1: warning: unused function 'CFLOAT_eig' [-Wunused-function]
CFLOAT_eig(char **args,
^
/private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/linalg/umath_linalg.c.src:2327:1: warning: unused function 'CFLOAT_eigvals' [-Wunused-function]
CFLOAT_eigvals(char **args,
^
/private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/linalg/umath_linalg.c.src:2878:13: warning: unused variable 'equal_4_types' [-Wunused-variable]
static char equal_4_types[] = {
            ^
/private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/linalg/umath_linalg.c.src:2885:13: warning: unused variable 'equal_5_types' [-Wunused-variable]
static char equal_5_types[] = {
            ^
/private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/linalg/umath_linalg.c.src:2892:13: warning: unused variable 'equal_6_types' [-Wunused-variable]
static char equal_6_types[] = {
            ^
6 warnings generated.
In file included from /private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/random/mtrand/initarray.c:76:
In file included from /private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/random/mtrand/initarray.h:2:
In file included from /private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/core/include/numpy/arrayobject.h:4:
In file included from /private/var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-8WjsnJ/numpy-1.8.0/numpy/core/include/numpy/ndarrayobject.h:26:
build/src.macosx-10.9-x86_64-2.7/numpy/core/include/numpy/__multiarray_api.h:1629:1: warning: unused function '_import_array' [-Wunused-function]
_import_array(void)
^
1 warning generated.
zip_safe flag not set; analyzing archive contents...
numpy._import_tools: module references __file__
numpy._import_tools: module references __path__
numpy.core.generate_numpy_api: module references __file__
numpy.core.setup: module references __file__
numpy.core.setup_common: module references __file__
numpy.distutils.exec_command: module references __file__
numpy.distutils.misc_util: module references __file__
numpy.distutils.npy_pkg_config: module references __file__
numpy.distutils.system_info: module references __file__
numpy.distutils.command.build_src: module references __file__
numpy.distutils.fcompiler.__init__: module references __file__
numpy.distutils.fcompiler.compaq: module references __file__
numpy.doc.__init__: module references __file__
numpy.f2py.diagnose: module references __file__
numpy.f2py.f2py2e: module references __file__
numpy.f2py.setup: module references __file__
numpy.lib.utils: module references __file__
numpy.lib.utils: module references __path__
numpy.lib.utils: module MAY be using inspect.getsource
numpy.lib.utils: module MAY be using inspect.getsourcefile
numpy.numarray.util: module references __file__
numpy.testing.noseclasses: module references __file__
numpy.testing.nosetester: module references __file__
numpy.testing.numpytest: module references __file__
numpy.testing.utils: module references __file__
Adding numpy 1.8.0 to easy-install.pth file
Installing f2py script to /usr/local/bin

Installed /usr/local/lib/python2.7/site-packages/numpy-1.8.0-py2.7-macosx-10.9-x86_64.egg
Processing dependencies for numpy
Finished processing dependencies for numpy
{% endcodeblock %}
