with Ada.integer_text_IO;
use Ada;

procedure add_by_referance is 
    procedure add(a, b: in Integer; c: out Integer) is
    begin
        c := a + b;
    end add;
    answer : Integer;
begin
    add(3, 5, answer);
    integer_text_IO.put(answer);
end add_by_referance;
