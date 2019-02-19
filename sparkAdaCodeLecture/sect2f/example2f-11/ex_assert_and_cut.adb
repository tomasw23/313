pragma SPARK_Mode;

procedure Ex_Assert_And_Cut(X : in out Integer) is
begin
   pragma Assert_And_Cut (U = X);
   X := X + 1;
   pragma Assert_And_Cut (X = U + 1);
   X := X + 1;
   pragma Assert_And_Cut (X = U + 2);
   X:= X + 1;
end Ex_Assert_And_Cut;

