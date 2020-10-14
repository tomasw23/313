pragma SPARK_Mode;
package body Simple_Railway
is



 procedure Print_One_Signal(The_Signal_State: in One_Signal_State) is
    begin
       case The_Signal_State is
	  when Red => Put("Red");
	  when Green => Put("Green");   
  --       when Green =>Spark_IO.Put_String(Spark_IO.Standard_Output,
  --                                       "Green",
  --                                       0);
       end case;
    end Print_One_Signal;

 procedure Print_One_Segment_State(the_State: in One_Segment_State) is
    begin
       case The_State is
         when Occupied_Standing => Put("Occupied_Standing");
         when Occupied_Moving_Left => Put("Occupied_Moving_Left");
         when Occupied_Moving_Right => Put("Occupied_Moving_Right");
         when Reserved_Moving_From_Left => Put("Reserved_Moving_From_Left");
         when Reserved_Moving_From_Right => Put("Reserved_Moving_From_Right");
         when Free => Put("Free");
       end case;
    end Print_One_Segment_State;


 procedure Print_State is
    begin
       Put("Starting From Left");
       Put("V");
       Print_One_Signal(Signal_State.Enter_Left);
       Put(" ");
       Put("^");
       Print_One_Signal(Signal_State.Leave_Left);
       Put(" ");
       Put("Segment_Left:");
       Print_One_Segment_State(Segment_State.Left);
       Put(" ");
       Put("V");
       Print_One_Signal(Signal_State.Left_Middle);
       Put(" ");
        Put("^");
       Print_One_Signal(Signal_State.Middle_Left);
       Put(" ");
       Put("Segment_Middle:");
       Print_One_Segment_State(Segment_State.Middle);
       Put(" ");
       Put("V");
       Print_One_Signal(Signal_State.Middle_Right);
       Put(" ");
       Put("^");
       Print_One_Signal(Signal_State.Right_Middle);
       Put(" ");
       Put("Segment_Right:");
       Print_One_Segment_State(Segment_State.Right);
       Put("  ");
       Put("V");
       Print_One_Signal(Signal_State.Leave_Right);
       Put(" ");
       Put("^");
       Print_One_Signal(Signal_State.Enter_Right);
       Put(" ");
       Put("Right");
       Put("  ");
    end Print_State;
    
 procedure Get_Action(Route: out Route_Type;
                     The_Mode: out Mode) is
    subtype Index_3 is Integer range 1 .. 3;
    subtype String_3 is String(Index_3);
    Item : String_3;
    subtype Index_1 is Integer range 1 .. 1;
    subtype String_1 is String(Index_1);
    Item_1 : String_1;
    subtype Index_2 is Integer range 1 .. 2;
    subtype String_2 is String(Index_2);
    Item_2 : String_2;
--    subtype String_Slice_1 is Integer range 1 ..1;
--    subtype String_Slice_2 is Integer range 2 ..3;
    Stop : Integer;
    Success_Route: Boolean;
    Success_Mode: Boolean;

    begin
       loop
	  pragma Loop_Invariant  (Status (Standard_Output) = Success);
          Put("Select Mode and Route");
          Put("First Letter O for Open, M for Move");
          Put("Letters 2 and 3 as follows");
          Put("ML for Middle_Left");
          Put("LM for Left_Middle");
          Put("RM for Right_Middle");
          Put("MR for Middle_Right");
          Put("LL for Leave_Left");
          Put("EL for Enter_Left");
          Put("LR for Leave_Right");
          Put("ER for Enter_Right");
          loop
	     pragma Loop_Invariant  (Status (Standard_Output) = Success);
             Get_Line(Item,Stop);
             exit when not (Stop = 0);
          end loop;
          Success_Mode  := False;
          Item_1 := " ";
          Item_1(1):= Item(1);
          Item_2 := "  ";
          Item_2(1):= Item(2);
          Item_2(2):= Item(3);
          The_Mode := Mode_Open;
          if Item_1 = "O"
          then
             The_Mode := Mode_Open;
             Success_Mode:= True;
          elsif Item_1 = "M"
          then
             The_Mode := Mode_Move;
             Success_Mode:= True;
          else
             Put("*** Mode (first letter) not valid. Should be O/M***");
          end if;
          Route := Route_Left_Middle;
          if Item_2 = "LM"
          then
             Success_Route := True;
             Route := Route_Left_Middle;
          elsif Item_2 = "ML"
          then
             Success_Route := True;
             Route := Route_Middle_Left;
          elsif Item_2 = "RM"
          then
             Success_Route := True;
             Route := Route_Right_Middle;
          elsif Item_2 = "MR"
          then
             Success_Route := True;
             Route := Route_Middle_Right;
          elsif Item_2 = "LL"
          then
             Success_Route := True;
             Route := Route_Leave_Left;
          elsif Item_2 = "EL"
          then
             Success_Route := True;
             Route := Route_Enter_Left;
          elsif Item_2 = "LR"
          then
             Success_Route := True;
             Route := Route_Leave_Right;
          elsif Item_2 = "ER"
          then
             Success_Route := True;
             Route := Route_Enter_Right;
          else
             Success_Route:= False;
             Put("*** Route (letter 2 and 3) not valid ***");
          end if;
          exit when (Success_Route and Success_Mode);
       end loop;
    end Get_Action;

















end Simple_Railway;

