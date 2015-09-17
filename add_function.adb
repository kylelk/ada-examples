with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada;

procedure add_function is
    function add(a, b : Integer) return Integer is
    begin
        return a + b;
    end add;
    result : Integer;
begin
    result := add(3, 5);
    Integer_Text_IO.put(result);
end add_function;
