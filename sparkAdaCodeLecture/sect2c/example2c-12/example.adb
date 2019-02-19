package body Example 
  with SPARK_MODE is
   
   Function F(X : Integer )  return Integer
   is
      
   begin
      return G(X + 1);
   end F;
   
   
   Function G(X : Integer )  return Integer
   is
      
   begin
      return F(X + 1);
   end G;
   
   
   
end Example;
