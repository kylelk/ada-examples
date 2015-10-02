with Ada.Text_IO;
with Ada.Float_Text_IO;
with Ada.IO_Exceptions;
with Ada.Integer_Text_IO;
use Ada;

procedure Change_Calculator is
   type Money is delta 0.01 digits 10;
   Input_Amount : Money := 0.0;
   package Money_IO is new Text_IO.Decimal_IO(Money);

   type Currency_Denomination is record
      Name : String(1..10);
      Value : Money;
   end record;

   Currency_Names  : array (1..10) of Currency_Denomination;
   Currency_Counts : array (1..10) of Integer := (others=>0);
   Currency_Index  : Integer range 1..10;
   procedure Get_Money_Prompt(Amount: out Money) is
      Response : String(1..20);
      Last     : Natural;
   begin
      loop
         declare
         begin
            Text_IO.Put("amount: ");
            Text_IO.Flush;
            Text_IO.Get_Line(Response, Last);
            Amount := Money'Value(Response(1 .. Last));
            exit;
         exception
            when Constraint_Error =>
               Text_IO.Put_Line("ERROR: bad money format");
         end;
      end loop;
   end Get_Money_Prompt;
begin
   Currency_Names := (("Penny     ", 0.01),
                      ("Nickle    ", 0.05),
                      ("Dime      ", 0.10),
                      ("Quarter   ", 0.25),
                      ("Dollar    ", 1.00),
                      ("5 Dollar  ", 5.00),
                      ("10 Dollar ", 10.00),
                      ("20 Dollar ", 20.00),
                      ("50 Dollar ", 50.00),
                      ("100 Dollar", 100.00));
   Get_Money_Prompt(Input_Amount);
   --while Input_Amount > 0.00 loop
   for I in Currency_Names'Range loop
      Currency_Index := (Currency_Names'Length-I)+1;
      -- Money_IO.Put(Currency_Names(Currency_Index).Value, 0);
      -- Text_IO.New_Line;
      while Input_Amount > Currency_Names(Currency_Index).Value loop
         Input_Amount := Input_Amount - Currency_Names(Currency_Index).Value;
         Currency_Counts(I) := Currency_Counts(I) + 1;
      end loop;
   end loop;

   for I in Currency_Counts'Range loop
      Currency_Index := (Currency_Names'Length-I)+1;
      Text_IO.Put(Currency_Names(I).Name & " ");
      Integer_Text_IO.Put(Currency_Counts(Currency_Index));
      Text_IO.New_Line;
   end loop;

   -- Money_IO.Put(Input_Amount, 0);
end Change_Calculator;
