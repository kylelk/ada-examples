with Ada.Text_IO;
use Ada;

procedure point_test is
    type Point is record
        x, y, z : float;
    end record;
    location : Point;
begin
    location := (x=>1.0, y=>1.0, z=>0.0);
end point_test;
