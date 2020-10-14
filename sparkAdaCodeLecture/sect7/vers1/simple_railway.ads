pragma SPARK_Mode;
-- with SPARK.Text_IO; use SPARK.Text_IO;

package Simple_Railway is

   type One_Segment_State is (Occupied_Standing,
                              Occupied_Moving_Left,
                              Occupied_Moving_Right,
                              Reserved_Moving_From_Left,
                              Reserved_Moving_From_Right,
                              Free);


   procedure Open(Local_Segment_State_Right : out One_Segment_State)
     with 
     Depends =>  (Local_Segment_State_Right => null),
     Post => (Local_Segment_State_Right = Reserved_Moving_From_Right);

end Simple_Railway;
