pragma SPARK_Mode;
package body Simple_Railway
is

   procedure Open(Local_Segment_State_Right : out One_Segment_State) is
   begin
         Local_Segment_State_Right := Reserved_Moving_From_Left;
      end Open;



end Simple_Railway;

