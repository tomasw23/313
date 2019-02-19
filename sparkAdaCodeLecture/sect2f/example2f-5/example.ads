Pragma SPARK_Mode;

procedure Example(N : in Integer; M : out Integer) 
  with Depends => (M => N),
  -- Pre => M >=0 and N < 0,  -- would result in an error: m referenced before
                              -- it has a value.
  Pre => N < 0,
  -- Post => N = N'Old;   -- would result in warning:
  -- attribute Old applied to constant has no effect
  Post => M = M'Old; -- is accepted althouth it should raise an error
   


