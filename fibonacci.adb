with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada;

procedure fibonacci is
    a,b,tmp : integer;
begin
    a := 0;
    b := 1;
    while b < 100 loop
        Integer_Text_IO.put(b, width=>0);
        Text_IO.New_Line;
        tmp := a + b;
        a := b;
        b := tmp;
    end loop;
end fibonacci;
