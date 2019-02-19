package Example 
  with SPARK_MODE 
is
   type Test is record
      A : Integer;
      B : Integer := 5;
   end record;
   
   X : Test := (A => 3);

   function f return Integer;
   
end Example;
  
  
  
