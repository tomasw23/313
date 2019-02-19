   procedure Open(Route: in Route_Type;
		  Success: out Boolean) is
                  
   begin
          Success := False;
          if Route  = Route_Left_Middle
          then
             if (Segment_State.Left = Occupied_Standing
                 and
                 Segment_State.Middle = Free)
             then
                Segment_State.Left:= Occupied_Moving_Right;
                Segment_State.Middle:= Reserved_Moving_From_Left;
                Signal_State.Left_Middle:= Green;
                Success := True;
             else
                Success := False;
             end if;
          elsif Route  = Route_Right_Middle
          then
             if (    Segment_State.Right = Occupied_Standing
                 and Segment_State.Middle = Free)
             then
                Segment_State.Right:= Occupied_Moving_Left;
                Segment_State.Middle:= Reserved_Moving_From_Right;
                Signal_State.Right_Middle:= Green;
                Success := True;
             else
                Success := False;
             end if;
          elsif Route = Route_Middle_Left
            then
               if (Segment_State.Middle = Occupied_Standing
                   and Segment_State.Left = Free)
               then
                  Segment_State.Middle:= Occupied_Moving_Left;
                  Segment_State.Left := Reserved_Moving_From_Right;
                  Signal_State.Middle_Left:= Green;
                Success := True;
             else
                Success := False;
             end if;
          elsif Route = Route_Middle_Right
            then
               if (Segment_State.Middle = Occupied_Standing
                   and Segment_State.Right = Free)
               then
                  Segment_State.Middle := Occupied_Moving_Right;
                  Segment_State.Right := Reserved_Moving_From_Left;
                  Signal_State.Middle_Right:= Green;
                Success := True;
             else
                Success := False;
             end if;
          elsif Route = Route_Enter_Left
            then
               if Segment_State.Left = Free
               then
                  Segment_State.Left := Reserved_Moving_From_Left;
                  Signal_State.Enter_Left:= Green;
                  Success := True;
               else
                  Success := False;
             end if;
          elsif Route = Route_Enter_Right
            then
               if Segment_State.Right = Free
               then
                  Segment_State.Right := Reserved_Moving_From_Right;
                  Signal_State.Enter_Right:= Green;
                  Success := True;
             else
                Success := False;
             end if;
          elsif Route = Route_Leave_Left
          then
             if Segment_State.Left = Occupied_Standing
               then
                  Segment_State.Left := Occupied_Moving_Left;
                  Signal_State.Leave_Left:= Green;
                  Success := True;
               else
                  Success := False;
             end if;
          elsif Route = Route_Leave_Right
          then
             if Segment_State.Right = Occupied_Standing
             then
                Segment_State.Right := Occupied_Moving_Right;
                Signal_State.Leave_Right:= Green;
                Success := True;
               else
                  Success := False;
             end if;
          end If;
      end Open;

