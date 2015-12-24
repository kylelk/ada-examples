with Ada.Text_IO;
with Ada.Directories;
with Ada.Strings.Unbounded;
with Ada.Strings.Unbounded.Text_IO;
use Ada;
use Ada.Strings.Unbounded;

procedure file_exists is
   File_Path : Unbounded_String;
   Found_File : Boolean;
begin
   Ada.Text_IO.Put("path: ");
   Strings.Unbounded.Text_IO.Get_Line(File_Path);
   Found_File := Directories.Exists(To_String(File_Path));
   if Found_File then
      Ada.Text_IO.Put_Line("file exists");
   else
      Ada.Text_IO.Put_Line("file does not exist");
   end if;
end file_exists;
