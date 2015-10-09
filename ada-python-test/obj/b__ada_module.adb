pragma Ada_95;
pragma Source_File_Name (ada_modulemain, Spec_File_Name => "b__ada_module.ads");
pragma Source_File_Name (ada_modulemain, Body_File_Name => "b__ada_module.adb");
pragma Suppress (Overflow_Check);
with Ada.Exceptions;

package body ada_modulemain is
   pragma Warnings (Off);

   E73 : Short_Integer; pragma Import (Ada, E73, "system__os_lib_E");
   E14 : Short_Integer; pragma Import (Ada, E14, "system__soft_links_E");
   E24 : Short_Integer; pragma Import (Ada, E24, "system__exception_table_E");
   E47 : Short_Integer; pragma Import (Ada, E47, "ada__io_exceptions_E");
   E49 : Short_Integer; pragma Import (Ada, E49, "ada__tags_E");
   E46 : Short_Integer; pragma Import (Ada, E46, "ada__streams_E");
   E71 : Short_Integer; pragma Import (Ada, E71, "interfaces__c_E");
   E26 : Short_Integer; pragma Import (Ada, E26, "system__exceptions_E");
   E76 : Short_Integer; pragma Import (Ada, E76, "system__file_control_block_E");
   E65 : Short_Integer; pragma Import (Ada, E65, "system__file_io_E");
   E69 : Short_Integer; pragma Import (Ada, E69, "system__finalization_root_E");
   E67 : Short_Integer; pragma Import (Ada, E67, "ada__finalization_E");
   E18 : Short_Integer; pragma Import (Ada, E18, "system__secondary_stack_E");
   E07 : Short_Integer; pragma Import (Ada, E07, "ada__text_io_E");
   E02 : Short_Integer; pragma Import (Ada, E02, "ada_module_E");

   Local_Priority_Specific_Dispatching : constant String := "";
   Local_Interrupt_States : constant String := "";

   Is_Elaborated : Boolean := False;

   procedure finalize_library is
   begin
      E07 := E07 - 1;
      declare
         procedure F1;
         pragma Import (Ada, F1, "ada__text_io__finalize_spec");
      begin
         if E07 = 0 then
            F1;
         end if;
      end;
      declare
         procedure F2;
         pragma Import (Ada, F2, "system__file_io__finalize_body");
      begin
         E65 := E65 - 1;
         if E65 = 0 then
            F2;
         end if;
      end;
      declare
         procedure Reraise_Library_Exception_If_Any;
            pragma Import (Ada, Reraise_Library_Exception_If_Any, "__gnat_reraise_library_exception_if_any");
      begin
         Reraise_Library_Exception_If_Any;
      end;
   end finalize_library;

   procedure ada_modulefinal is

      procedure Runtime_Finalize;
      pragma Import (C, Runtime_Finalize, "__gnat_runtime_finalize");

   begin
      if not Is_Elaborated then
         return;
      end if;
      Is_Elaborated := False;
      Runtime_Finalize;
      finalize_library;
   end ada_modulefinal;

   type No_Param_Proc is access procedure;

   procedure ada_moduleinit is
      Main_Priority : Integer;
      pragma Import (C, Main_Priority, "__gl_main_priority");
      Time_Slice_Value : Integer;
      pragma Import (C, Time_Slice_Value, "__gl_time_slice_val");
      WC_Encoding : Character;
      pragma Import (C, WC_Encoding, "__gl_wc_encoding");
      Locking_Policy : Character;
      pragma Import (C, Locking_Policy, "__gl_locking_policy");
      Queuing_Policy : Character;
      pragma Import (C, Queuing_Policy, "__gl_queuing_policy");
      Task_Dispatching_Policy : Character;
      pragma Import (C, Task_Dispatching_Policy, "__gl_task_dispatching_policy");
      Priority_Specific_Dispatching : System.Address;
      pragma Import (C, Priority_Specific_Dispatching, "__gl_priority_specific_dispatching");
      Num_Specific_Dispatching : Integer;
      pragma Import (C, Num_Specific_Dispatching, "__gl_num_specific_dispatching");
      Main_CPU : Integer;
      pragma Import (C, Main_CPU, "__gl_main_cpu");
      Interrupt_States : System.Address;
      pragma Import (C, Interrupt_States, "__gl_interrupt_states");
      Num_Interrupt_States : Integer;
      pragma Import (C, Num_Interrupt_States, "__gl_num_interrupt_states");
      Unreserve_All_Interrupts : Integer;
      pragma Import (C, Unreserve_All_Interrupts, "__gl_unreserve_all_interrupts");
      Detect_Blocking : Integer;
      pragma Import (C, Detect_Blocking, "__gl_detect_blocking");
      Default_Stack_Size : Integer;
      pragma Import (C, Default_Stack_Size, "__gl_default_stack_size");
      Leap_Seconds_Support : Integer;
      pragma Import (C, Leap_Seconds_Support, "__gl_leap_seconds_support");

      procedure Runtime_Initialize (Install_Handler : Integer);
      pragma Import (C, Runtime_Initialize, "__gnat_runtime_initialize");

      Finalize_Library_Objects : No_Param_Proc;
      pragma Import (C, Finalize_Library_Objects, "__gnat_finalize_library_objects");
   begin
      if Is_Elaborated then
         return;
      end if;
      Is_Elaborated := True;
      Main_Priority := -1;
      Time_Slice_Value := -1;
      WC_Encoding := 'b';
      Locking_Policy := ' ';
      Queuing_Policy := ' ';
      Task_Dispatching_Policy := ' ';
      Priority_Specific_Dispatching :=
        Local_Priority_Specific_Dispatching'Address;
      Num_Specific_Dispatching := 0;
      Main_CPU := -1;
      Interrupt_States := Local_Interrupt_States'Address;
      Num_Interrupt_States := 0;
      Unreserve_All_Interrupts := 0;
      Detect_Blocking := 0;
      Default_Stack_Size := -1;
      Leap_Seconds_Support := 0;

      Runtime_Initialize (1);

      if E14 = 0 then
         System.Soft_Links'Elab_Spec;
      end if;
      if E24 = 0 then
         System.Exception_Table'Elab_Body;
      end if;
      E24 := E24 + 1;
      if E47 = 0 then
         Ada.Io_Exceptions'Elab_Spec;
      end if;
      E47 := E47 + 1;
      if E49 = 0 then
         Ada.Tags'Elab_Spec;
      end if;
      if E46 = 0 then
         Ada.Streams'Elab_Spec;
      end if;
      E46 := E46 + 1;
      if E71 = 0 then
         Interfaces.C'Elab_Spec;
      end if;
      if E26 = 0 then
         System.Exceptions'Elab_Spec;
      end if;
      E26 := E26 + 1;
      if E76 = 0 then
         System.File_Control_Block'Elab_Spec;
      end if;
      E76 := E76 + 1;
      if E69 = 0 then
         System.Finalization_Root'Elab_Spec;
      end if;
      E69 := E69 + 1;
      if E67 = 0 then
         Ada.Finalization'Elab_Spec;
      end if;
      E67 := E67 + 1;
      if E65 = 0 then
         System.File_Io'Elab_Body;
      end if;
      E65 := E65 + 1;
      E71 := E71 + 1;
      if E49 = 0 then
         Ada.Tags'Elab_Body;
      end if;
      E49 := E49 + 1;
      if E14 = 0 then
         System.Soft_Links'Elab_Body;
      end if;
      E14 := E14 + 1;
      if E73 = 0 then
         System.Os_Lib'Elab_Body;
      end if;
      E73 := E73 + 1;
      if E18 = 0 then
         System.Secondary_Stack'Elab_Body;
      end if;
      E18 := E18 + 1;
      if E07 = 0 then
         Ada.Text_Io'Elab_Spec;
      end if;
      if E07 = 0 then
         Ada.Text_Io'Elab_Body;
      end if;
      E07 := E07 + 1;
      E02 := E02 + 1;
   end ada_moduleinit;

--  BEGIN Object file/option list
   --   /Users/kylekersey/app-tests/ada/ada-examples/ada-python-test/obj/ada_module.o
   --   -L/Users/kylekersey/app-tests/ada/ada-examples/ada-python-test/obj/
   --   -L/usr/local/gnat/lib/gcc/x86_64-apple-darwin13.4.0/4.9.3/adalib/
   --   -static
   --   -lgnat
--  END Object file/option list   

end ada_modulemain;
