pragma SPARK_Mode;
package Test is 
   pragma Elaborate_Body(Test);
end Test;

package body Test is
   with SPARK_Mode;

   procedure Init(A : out Integer)
     with Depends => (A => null),
     Post => (A = 0) is
   begin
      A := 0;
   end Init;

   
   procedure Inc(A : in out Integer)
     with Depends => (A => A),
     Post => (A = A'Old + 2) is
   begin
      A:= A + 2;
   end Inc;
      
   
   Procedure Main(A : out Integer)
     with Depends => (A => null),
     Post => (A = 2) is
   begin
      Init(A);
      Inc(A);
   end Main;
      
end Test;
   
