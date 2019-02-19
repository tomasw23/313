package body Example 
  with SPARK_MODE is
   
   Function F(X : Integer )  return Integer
   is
      
   begin
      return F(X + 1); -- not allowed because detects infinite loop
   end F;
   
end Example;
