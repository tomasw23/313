package body Example  
  with SPARK_MODE
is
   
   
   function A1 (X : in Integer) return Integer
   is
   begin
      return X + Glob;
   end A1;
   
   
   procedure Init 
   is
   begin
      Glob := 3;
   end Init;
     
end Example;
  
