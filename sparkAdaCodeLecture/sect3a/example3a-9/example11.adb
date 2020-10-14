with Ada.Text_Io, Ada.Integer_Text_IO;
use Ada.Text_Io, Ada.Integer_Text_Io;

package body Example11 is
   
procedure abc(A: in Float;
	      B: out Integer;
	      C: in out Color) is
begin
   B := 3;
   Put(B);
end abc;

Procedure Example is
   M : constant Integer := 10;
   N : constant Integer := 4;
   A : Integer;
begin
   Outer_Loop: For J in 1 .. M loop
      for K in 3 .. N loop
	 Put("J=");
	 Put(J);
	 New_Line;	 
	 Put("K=");
	 Put(K);
	 New_Line;	 
	 A := J - K;
	 Put("A=");
	 Put(A);	 
	 New_Line;
	 exit Outer_Loop when A = 0;
	 end loop;
   end loop Outer_loop;
end Example;
end Example11;
     
	    
