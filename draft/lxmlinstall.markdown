$  /usr/local/bin/easy_install3 lxml
Searching for lxml
Reading http://pypi.python.org/simple/lxml/
Best match: lxml 3.2.1
Downloading http://pypi.python.org/packages/source/l/lxml/lxml-3.2.1.tar.gz#md5=d183ccd6bbd5ca139e9db9e9a675787e
Processing lxml-3.2.1.tar.gz
Writing /var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-z7ef1s/lxml-3.2.1/setup.cfg
Running lxml-3.2.1/setup.py -q bdist_egg --dist-dir /var/folders/hc/9mbf3qy10mz8wxjmd9314kl80000gn/T/easy_install-z7ef1s/lxml-3.2.1/egg-dist-tmp-ygzh54
Building lxml version 3.2.1.
Building without Cython.
Using build configuration of libxslt 1.1.26
/usr/local/Cellar/python3/3.3.0/Frameworks/Python.framework/Versions/3.3/lib/python3.3/distutils/dist.py:257: UserWarning: Unknown distribution option: 'bugtrack_url'
  warnings.warn(msg)
warning: no files found matching '*.txt' under directory 'src/lxml/tests'
clang: warning: argument unused during compilation: '-flat_namespace'
src/lxml/lxml.etree.c:136289:17: warning: enumeration value
      '__pyx_e_4lxml_5etree_PARSER_DATA_INVALID' not handled in switch [-Wswitch]
        switch (__pyx_v_doc_ref->_type) {
                ^
src/lxml/lxml.etree.c:140375:72: warning: incompatible pointer types passing 'struct
      __pyx_obj_4lxml_5etree__BaseContext *' to parameter of type 'struct
      __pyx_obj_4lxml_5etree__XSLTContext *' [-Wincompatible-pointer-types]
  ...((struct __pyx_obj_4lxml_5etree__BaseContext *)__pyx_v_self->_context))); if...
     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
src/lxml/lxml.etree.c:138310:138: note: passing argument to parameter '__pyx_v_self' here
  ...__pyx_obj_4lxml_5etree__XSLTContext *__pyx_v_self) {
                                          ^
src/lxml/lxml.etree.c:141781:70: warning: incompatible pointer types passing 'struct
      __pyx_obj_4lxml_5etree__BaseContext *' to parameter of type 'struct
      __pyx_obj_4lxml_5etree__XSLTContext *' [-Wincompatible-pointer-types]
  ...((struct __pyx_obj_4lxml_5etree__BaseContext *)__pyx_v_stylesheet->_context))); if...
     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
src/lxml/lxml.etree.c:138310:138: note: passing argument to parameter '__pyx_v_self' here
  ...__pyx_obj_4lxml_5etree__XSLTContext *__pyx_v_self) {
                                          ^
src/lxml/lxml.etree.c:160712:19: warning: expression result unused [-Wunused-value]
    PyObject_INIT(o, t);
                  ^
/usr/local/Cellar/python3/3.3.0/Frameworks/Python.framework/Versions/3.3/include/python3.3m/objimpl.h:163:69: note: 
      expanded from macro 'PyObject_INIT'
    ( Py_TYPE(op) = (typeobj), _Py_NewReference((PyObject *)(op)), (op) )
                                                                    ^
src/lxml/lxml.etree.c:162525:19: warning: expression result unused [-Wunused-value]
    PyObject_INIT(o, t);
                  ^
/usr/local/Cellar/python3/3.3.0/Frameworks/Python.framework/Versions/3.3/include/python3.3m/objimpl.h:163:69: note: 
      expanded from macro 'PyObject_INIT'
    ( Py_TYPE(op) = (typeobj), _Py_NewReference((PyObject *)(op)), (op) )
                                                                    ^
src/lxml/lxml.etree.c:168081:19: warning: expression result unused [-Wunused-value]
    PyObject_INIT(o, t);
                  ^
/usr/local/Cellar/python3/3.3.0/Frameworks/Python.framework/Versions/3.3/include/python3.3m/objimpl.h:163:69: note: 
      expanded from macro 'PyObject_INIT'
    ( Py_TYPE(op) = (typeobj), _Py_NewReference((PyObject *)(op)), (op) )
                                                                    ^
src/lxml/lxml.etree.c:170771:19: warning: expression result unused [-Wunused-value]
    PyObject_INIT(o, t);
                  ^
/usr/local/Cellar/python3/3.3.0/Frameworks/Python.framework/Versions/3.3/include/python3.3m/objimpl.h:163:69: note: 
      expanded from macro 'PyObject_INIT'
    ( Py_TYPE(op) = (typeobj), _Py_NewReference((PyObject *)(op)), (op) )
                                                                    ^
src/lxml/lxml.etree.c:12770:13: warning: function '__pyx_f_4lxml_5etree_displayNode' is not needed
      and will not be emitted [-Wunneeded-internal-declaration]
static void __pyx_f_4lxml_5etree_displayNode(xmlNode *__pyx_v_c_node, PyObject *__pyx_v_indent) {
            ^

8 warnings generated.
clang: warning: argument unused during compilation: '-flat_namespace'
Adding lxml 3.2.1 to easy-install.pth file

Installed /usr/local/lib/python3.3/site-packages/lxml-3.2.1-py3.3-macosx-10.8-x86_64.egg
Processing dependencies for lxml
Finished processing dependencies for lxml
