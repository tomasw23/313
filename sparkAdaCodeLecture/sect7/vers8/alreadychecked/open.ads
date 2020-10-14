   procedure Open(Route: in Route_Type;
                  Success: out Boolean)
     with 
     Global => (In_Out => (Segment_State, Signal_State)),
     Depends => (Segment_State => (Segment_State,Route),
     		 Success       => (Segment_State,Route),
     		 Signal_State  => (Segment_State,Route,Signal_State)),
      Pre  => (if Signal_State.Middle_Left = Green
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
      	      then Segment_State.Right = Reserved_Moving_From_Right),
     Post => (
	     (if Signal_State.Middle_Left = Green
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
                 then Segment_State.Left = Reserved_Moving_From_Left)
            and
           (if (Segment_State'Old.Left = Occupied_Moving_Left
            or
            Segment_State'Old.Left = Occupied_Moving_Right
             or
             Segment_State'Old.Left = Occupied_Standing)
            then
           ((Segment_State.Left = Occupied_Moving_Left
             or
             Segment_State.Left = Occupied_Moving_Right
             or
             Segment_State.Left = Occupied_Standing)))
            and
           (if (Segment_State'Old.Middle = Occupied_Moving_Left
             or
             Segment_State'Old.Middle = Occupied_Moving_Right
             or
             Segment_State'Old.Middle = Occupied_Standing)
            then
           ((Segment_State.Middle = Occupied_Moving_Left
             or
             Segment_State.Middle = Occupied_Moving_Right
             or
             Segment_State.Middle = Occupied_Standing)))
            and
           (if (Segment_State'Old.Right = Occupied_Moving_Left
             or
             Segment_State'Old.Right = Occupied_Moving_Right
             or
             Segment_State'Old.Right = Occupied_Standing)
            then
            (Segment_State.Right = Occupied_Moving_Left
             or
             Segment_State.Right = Occupied_Moving_Right
             or
             Segment_State.Right = Occupied_Standing)));
