with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada;

procedure loop_test is
begin
    for number in 0..10 loop
        Integer_Text_IO.put(number);
        Text_IO.New_Line;
    end loop;
end loop_test;
