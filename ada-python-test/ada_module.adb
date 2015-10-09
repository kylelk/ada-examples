with Ada.Text_IO;

package body Ada_Module is

   procedure Say_Hello is
   begin
      Ada.Text_IO.Put_Line ("Hello from Ada!");
   end Say_Hello;

end Ada_Module;