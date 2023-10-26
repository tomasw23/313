This library has two improvements as suggested by Finley Bennet
 - There is a procedure As_Skip_Line which is a wrapper for Ada.Text_IO.Skip_Line
   In case the problem occurs that after an As_Get the next As_Get takes the rest
   of the input, then As_Skip_Line; could be used before the As_Get to clear the buffer.
   We haven't been able to reproduce this particular error, and haven't tested this function yet.
- In As_Get(Item : out Integer,...)   there was a bug that if the user enteres an empty string the
  system crashes. Now a length check has been added so that if the input consists of blanks only 
  it asks the  user to try again.
