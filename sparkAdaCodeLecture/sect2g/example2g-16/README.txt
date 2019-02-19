Extract of files from 
~/Dropbox/sparkada2014/critsys2015/critsys2014/sect2g/example2g-15/
(which are examples from the spark ada distribution)
which are needed to check

use_int_io.adb

Error messages we get
~~~~~~~~~~~~~~~~~~~~~~
spark-text_io.adb:27:09: warning: unit "Ada.Exceptions" is not referenced
spark-text_io.adb:74:13: warning: function "Get_Standard_File" is not referenced
use_int_io.adb:32:18: medium: precondition of main program might fail

The error
use_int_io.adb:32:18: medium: precondition of main program might fail
is when we look at why3 due to 

is_writable(Standard_Error)
