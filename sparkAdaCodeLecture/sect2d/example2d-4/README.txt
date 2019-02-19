We got error messages:

known issue of spark-text_io:

spark-text_io.ads:95:25: warning: unrecognized convention name, C assumed
spark-text_io.ads:99:25: warning: unrecognized convention name, C assumed
spark-text_io.ads:103:25: warning: unrecognized convention name, C assumed
spark-text_io.ads:108:23: warning: unrecognized convention name, C assumed
spark-text_io.ads:114:25: warning: unrecognized convention name, C assumed


example.adb:17:16: medium: overflow check might fail
  this is due to the fact that we might exceed maximum floating point number


