with Ada.Text_IO;
with Ada.Integer_Text_IO;
with Ada.Float_Text_IO;
use Ada;
with Geometry;

procedure geometry_test is
    procedure put_float(number : Float) is
    begin
        Float_Text_IO.put(Item => number, Aft => 3, Exp => 0);
    end put_float;
    cup : Geometry.Cylinder;
    cup_volume : Float;

begin
    -- calculate volume of coffee mug
    cup.radius := (3.25/2.0); -- 3.25 inches diameter
    cup.height := (5.0); -- 5 inches tall
    cup_volume := Geometry.volume (cup);

    put_float(cup_volume);
end geometry_test;

