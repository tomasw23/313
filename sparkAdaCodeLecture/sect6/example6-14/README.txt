These files are all from /usr/gnat/share/examples/spark/spark_io/
of the distribution.
It might actually be the 2014 version not the 2015 version.
sect2g/example2g-15/ contains the 2015 version

They don't get through gnatprove, in it's original form,

Error message is
use_int_io.adb:32:18: warning: precondition of main program might fail

the pre condition is
       Pre    => Is_Writable (Standard_Error) and
                 Status (Standard_Error) = Success


This is strange since use_int_io.adb
has a clause
with SPARK.Text_IO;

and 
spark-text_io.ads
has
  with Initializes => (Standard_Input, Standard_Output, Standard_Error),
       Initial_Condition => Is_Readable (Standard_Input) and
                            Is_Writable (Standard_Output) and
                            Is_Writable (Standard_Error) and
                            Status (Standard_Input) = Success and
                            Status (Standard_Output) = Success and
                            Status (Standard_Error) = Success
