Please follow this example starting from vers01 and then continuing with 
ver02 etc.

Note a record occurs only in vers06 and vers07 - the later example refer
  vers08 .. vers11 extend examples in vers04 and vers05

Note that this is not a completely in accordance with how the conversion
from 0 .. 23 hours to hours with am/pm works:
  - to be more realistic
      0 should be become 12
      times t in 1 .. 12 should stay
      times t in 13 .. 23 should become t - 12
  - and there is a special treatment of noon and midnight.
We keep it as it is so that the example stays easy. 
We leave it to the reader to adapt this example to a more realistic ones.

