pragma SPARK_Mode;
with SPARK.Text_IO; use SPARK.Text_IO;

package Simple_Railway is

   type One_Signal_State is (Red,Green);

   type Mode is (Mode_Open, Mode_Move);

   type Route_Type is (Route_Left_Middle,
                   Route_Middle_Left,
                   Route_Middle_Right,
                   Route_Right_Middle,
                   Route_Leave_Left,
                   Route_Enter_Left,
                   Route_Leave_Right,
                   Route_Enter_Right);

   type One_Segment_State is (Occupied_Standing,
                               Occupied_Moving_Left,
                               Occupied_Moving_Right,
                               Reserved_Moving_From_Left,
                               Reserved_Moving_From_Right,
                               Free);
   -- type BlockedType is (Blocked, Unblocked);

   type Segment_State_Type is
      record
         Left,
         Middle,
         Right: One_Segment_State;
      end record;

   type Signal_State_Type is
      record
         Leave_Left,
         Enter_Left,
         Left_Middle,
         Middle_Left,
         Middle_Right,
         Right_Middle,
         Leave_Right,
         Enter_Right: One_Signal_State;
      end record;

   Segment_State : Segment_State_Type;
   Signal_State  : Signal_State_Type;









 

 procedure Print_One_Signal(The_Signal_State: in One_Signal_State) with
   Global => (In_Out => Standard_Output),
   Depends => (Standard_Output => (Standard_Output, The_Signal_State)),
   Pre    => Status (Standard_Output) = Success,
   Post   => Status (Standard_Output) = Success;


 procedure Print_One_Segment_State(the_State: in One_Segment_State) with
   Global => (In_Out => Standard_Output),
   Depends => (Standard_Output => (Standard_Output, The_State)),
   Pre    => Status (Standard_Output) = Success,
   Post   => Status (Standard_Output) = Success;


procedure Print_State with
   Global => (In_Out => Standard_Output,
	      Input => (Segment_State, Signal_State)),
   Depends => (Standard_Output => (Standard_Output, Segment_State,Signal_State)),
   Pre    => Status (Standard_Output) = Success,
   Post   => Status (Standard_Output) = Success;



procedure Get_Action(Route: out Route_Type;
                     The_Mode : out Mode) with  
   Global => (In_Out => (Standard_Input,Standard_Output)),
  Depends => (Standard_Output => (Standard_Output, Standard_Input),
	      Standard_Input =>   Standard_Input,
	      Route =>   Standard_Input,
	      The_Mode =>   Standard_Input),
   Pre    => Status (Standard_Output) = Success,
   Post   => Status (Standard_Output) = Success;
  --# global in out Spark_IO.Inputs, Spark_IO.Outputs;
 --# derives Spark_IO.Outputs from Spark_IO.Outputs, Spark_IO.Inputs &
 --#         Spark_IO.Inputs, Route, The_Mode from Spark_IO.Inputs ;









end Simple_Railway;
