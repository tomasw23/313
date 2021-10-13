Even when using mainWithoutRangeCheck.gpr 
spark ada reports the error

example.adb:20:16: medium: float overflow check might fail
  this is due to the fact that we might exceed maximum floating point number

There may be a switch to the mainWithoutRangeCheck.gpr to fix this problem,
if you find a solution please tell Anton Setzer a.g.setzer@swansea.ac.uk




