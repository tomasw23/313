Error message occur in 
spark-text_io.ads

spark-text_io.ads:95:25: warning: unrecognized convention name, C assumed
spark-text_io.ads:99:25: warning: unrecognized convention name, C assumed
spark-text_io.ads:103:25: warning: unrecognized convention name, C assumed
spark-text_io.ads:108:23: warning: unrecognized convention name, C assumed
spark-text_io.ads:114:25: warning: unrecognized convention name, C assumed

spark-text_io.adb and .ads are provided by spark ada (I have small modifications
which shouldn't affect the errormessage) so this is a known issue

Furthermore  we get
example.adb:12:16: medium: overflow check might fail

