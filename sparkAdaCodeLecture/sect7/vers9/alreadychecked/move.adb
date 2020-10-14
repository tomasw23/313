   procedure Move(Route: in Route_Type;
                         Success: out Boolean) is
       begin
          Success := False;
          if Route  = Route_Left_Middle
          then
             if (Segment_State.Left = Occupied_Moving_Right
                 and
 		  Segment_State.Middle = Reserved_Moving_From_Left
 		  and
 	          Signal_State.Left_Middle= Green)
             then
                Signal_State.Left_Middle:= Red;
                Segment_State.Left:= Free;
                Segment_State.Middle:= Occupied_Standing;
                Success := True;
             else
                Success := False;
             end if;
          elsif Route  = Route_Right_Middle
          then
             if (    Segment_State.Right = Occupied_Moving_Left
 		      and Segment_State.Middle = Reserved_Moving_From_Right
 		      and Signal_State.Right_Middle = Green)
             then
                Signal_State.Right_Middle:= Red;
                Segment_State.Right:= Free;
                Segment_State.Middle:= Occupied_Standing;
                Success := True;
             else
                Success := False;
             end if;
          elsif Route = Route_Middle_Left
            then
               if (Segment_State.Middle = Occupied_Moving_Left
 		    and Segment_State.Left = Reserved_Moving_From_Right
 		    and Signal_State.Middle_Left = Green)
               then
                  Signal_State.Middle_Left:= Red;
                  Segment_State.Middle:= Free;
                  Segment_State.Left := Occupied_Standing;
                Success := True;
             else
                Success := False;
             end if;
          elsif Route = Route_Middle_Right
            then
               if (Segment_State.Middle = Occupied_Moving_Right
 		    and Segment_State.Right = Reserved_Moving_From_Left
 		    and Signal_State.Middle_Right = Green)
               then
                  Signal_State.Middle_Right:= Red;
                  Segment_State.Middle := Free;
                  Segment_State.Right := Occupied_Standing;
                Success := True;
             else
                Success := False;
             end if;
          elsif Route = Route_Enter_Left
            then
               if (Segment_State.Left = Reserved_Moving_From_Left
 		  and Signal_State.Enter_Left = Green)
               then
                  Signal_State.Enter_Left:= Red;
                  Segment_State.Left := Occupied_Standing;
                  Success := True;
               else
                  Success := False;
             end if;
          elsif Route = Route_Enter_Right
            then
               if (Segment_State.Right = Reserved_Moving_From_Right
 		    and Signal_State.Enter_Right= Green)
               then
                  Signal_State.Enter_Right:= Red;
                  Segment_State.Right := Occupied_Standing;
                  Success := True;
             else
                Success := False;
             end if;
          elsif Route = Route_Leave_Left
          then
             if (Segment_State.Left = Occupied_Moving_Left
 		   and Signal_State.Leave_Left = Green)
               then
                  Signal_State.Leave_Left:= Red;
                  Segment_State.Left := Free;
                  Success := True;
               else
                  Success := False;
             end if;
          elsif Route = Route_Leave_Right
          then
             if (Segment_State.Right = Occupied_Moving_Right
 		  and Signal_State.Leave_Right = Green)
               then
                  Signal_State.Leave_Right:= Red;
                  Segment_State.Right := Free;
                  Success := True;
               else
                  Success := False;
             end if;
          end if;
       end Move;
