     procedure Init is
        begin
           Signal_State := Signal_State_Type'(Leave_Left => Red,
                                              Enter_Left => Red,
                                                Left_Middle => Red,
                                                Middle_Left => Red,
                                                Middle_Right => Red,
                                                Right_Middle => Red,
                                                Leave_Right => Red,
                                                Enter_Right => Red);
           Segment_State := Segment_State_Type'(Left => Free,
                                                  Middle => Free,
                                                  Right  => Free);
        end Init;
