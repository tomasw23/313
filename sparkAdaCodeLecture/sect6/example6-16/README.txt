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
