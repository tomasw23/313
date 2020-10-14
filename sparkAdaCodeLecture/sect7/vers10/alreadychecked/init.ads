   procedure Init with
     Global => (Output => (Segment_State, Signal_State)),
     Depends => (Signal_State => null,
		 Segment_State => null),
     Post => ((if Signal_State.Middle_Left = Green
             then (Segment_State.Left = Reserved_Moving_From_Right
                 and Segment_State.Middle = Occupied_Moving_Left))
         and
        (if Signal_State.Middle_Right = Green
             then (Segment_State.Right = Reserved_Moving_From_Left
                 and Segment_State.Middle = Occupied_Moving_Right))
         and
        (if Signal_State.Left_Middle = Green
             then (Segment_State.Middle = Reserved_Moving_From_Left
                 and Segment_State.Left = Occupied_Moving_Right))
         and
        (if Signal_State.Right_Middle = Green
             then (Segment_State.Middle = Reserved_Moving_From_Right
                 and Segment_State.Right = Occupied_Moving_Left))
   
         and
        (if Signal_State.Leave_Left = Green
             then Segment_State.Left = Occupied_Moving_Left)
   
         and
        (if Signal_State.Enter_Left = Green
             then Segment_State.Left = Reserved_Moving_From_Left)
   
         and
        (if Signal_State.Leave_Right = Green
             then Segment_State.Right = Occupied_Moving_Right)
   
         and
        (if Signal_State.Enter_Left = Green
             then Segment_State.Right = Reserved_Moving_From_Right));
   
  
