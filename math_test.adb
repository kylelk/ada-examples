with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada;
procedure math_test is
    num1 : Integer;
    num2 : Integer;
    sum : Integer;
begin
    num1 := 3;
    num2 := 5;
    sum := num1 + num2;
    Integer_Text_IO.put(sum);
end math_test;
