pragma SPARK_MODE(Off);
with Example;
use Example;

procedure Main(X : in out Boolean) 
is  
   Y : Boolean := True;
   begin
      Exchange(X,Y);
      Exchange(Y,X);      
   end Main;
   
   
