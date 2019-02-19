pragma Ada_95;
pragma Source_File_Name (ada_main, Spec_File_Name => "b~main.ads");
pragma Source_File_Name (ada_main, Body_File_Name => "b~main.adb");
pragma Suppress (Overflow_Check);
with Ada.Exceptions;

package body ada_main is
   pragma Warnings (Off);

   E075 : Short_Integer; pragma Import (Ada, E075, "system__os_lib_E");
   E014 : Short_Integer; pragma Import (Ada, E014, "system__soft_links_E");
   E024 : Short_Integer; pragma Import (Ada, E024, "system__exception_table_E");
   E062 : Short_Integer; pragma Import (Ada, E062, "ada__io_exceptions_E");
   E046 : Short_Integer; pragma Import (Ada, E046, "ada__tags_E");
   E061 : Short_Integer; pragma Import (Ada, E061, "ada__streams_E");
   E073 : Short_Integer; pragma Import (Ada, E073, "interfaces__c_E");
   E026 : Short_Integer; pragma Import (Ada, E026, "system__exceptions_E");
   E078 : Short_Integer; pragma Import (Ada, E078, "system__file_control_block_E");
   E067 : Short_Integer; pragma Import (Ada, E067, "system__file_io_E");
   E071 : Short_Integer; pragma Import (Ada, E071, "system__finalization_root_E");
   E069 : Short_Integer; pragma Import (Ada, E069, "ada__finalization_E");
   E018 : Short_Integer; pragma Import (Ada, E018, "system__secondary_stack_E");
   E059 : Short_Integer; pragma Import (Ada, E059, "ada__text_io_E");
   E002 : Short_Integer; pragma Import (Ada, E002, "main_E");
   E101 : Short_Integer; pragma Import (Ada, E101, "spark__text_io_E");
   E006 : Short_Integer; pragma Import (Ada, E006, "as_io_wrapper_E");
   E105 : Short_Integer; pragma Import (Ada, E105, "simple_railway_E");
   E103 : Short_Integer; pragma Import (Ada, E103, "spark__text_io__integer_io_E");

   Local_Priority_Specific_Dispatching : constant String := "";
   Local_Interrupt_States : constant String := "";

   Is_Elaborated : Boolean := False;

   procedure finalize_library is
   begin
      E059 := E059 - 1;
      declare
         procedure F1;
         pragma Import (Ada, F1, "ada__text_io__finalize_spec");
      begin
         F1;
      end;
      declare
         procedure F2;
         pragma Import (Ada, F2, "system__file_io__finalize_body");
      begin
         E067 := E067 - 1;
         F2;
      end;
      declare
         procedure Reraise_Library_Exception_If_Any;
            pragma Import (Ada, Reraise_Library_Exception_If_Any, "__gnat_reraise_library_exception_if_any");
      begin
         Reraise_Library_Exception_If_Any;
      end;
   end finalize_library;

   procedure adafinal is
      procedure s_stalib_adafinal;
      pragma Import (C, s_stalib_adafinal, "system__standard_library__adafinal");

      procedure Runtime_Finalize;
      pragma Import (C, Runtime_Finalize, "__gnat_runtime_finalize");

   begin
      if not Is_Elaborated then
         return;
      end if;
      Is_Elaborated := False;
      Runtime_Finalize;
      s_stalib_adafinal;
   end adafinal;

   type No_Param_Proc is access procedure;

   procedure adainit is
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

      Finalize_Library_Objects := finalize_library'access;

      System.Soft_Links'Elab_Spec;
      System.Exception_Table'Elab_Body;
      E024 := E024 + 1;
      Ada.Io_Exceptions'Elab_Spec;
      E062 := E062 + 1;
      Ada.Tags'Elab_Spec;
      Ada.Streams'Elab_Spec;
      E061 := E061 + 1;
      Interfaces.C'Elab_Spec;
      System.Exceptions'Elab_Spec;
      E026 := E026 + 1;
      System.File_Control_Block'Elab_Spec;
      E078 := E078 + 1;
      System.Finalization_Root'Elab_Spec;
      E071 := E071 + 1;
      Ada.Finalization'Elab_Spec;
      E069 := E069 + 1;
      System.File_Io'Elab_Body;
      E067 := E067 + 1;
      E073 := E073 + 1;
      Ada.Tags'Elab_Body;
      E046 := E046 + 1;
      System.Soft_Links'Elab_Body;
      E014 := E014 + 1;
      System.Os_Lib'Elab_Body;
      E075 := E075 + 1;
      System.Secondary_Stack'Elab_Body;
      E018 := E018 + 1;
      Ada.Text_Io'Elab_Spec;
      Ada.Text_Io'Elab_Body;
      E059 := E059 + 1;
      SPARK.TEXT_IO'ELAB_SPEC;
      SPARK.TEXT_IO'ELAB_BODY;
      E101 := E101 + 1;
      E105 := E105 + 1;
      E002 := E002 + 1;
      E103 := E103 + 1;
      As_Io_Wrapper'Elab_Body;
      E006 := E006 + 1;
   end adainit;

   procedure Ada_Main_Program;
   pragma Import (Ada, Ada_Main_Program, "_ada_main");

   function main
     (argc : Integer;
      argv : System.Address;
      envp : System.Address)
      return Integer
   is
      procedure Initialize (Addr : System.Address);
      pragma Import (C, Initialize, "__gnat_initialize");

      procedure Finalize;
      pragma Import (C, Finalize, "__gnat_finalize");
      SEH : aliased array (1 .. 2) of Integer;

      Ensure_Reference : aliased System.Address := Ada_Main_Program_Name'Address;
      pragma Volatile (Ensure_Reference);

   begin
      gnat_argc := argc;
      gnat_argv := argv;
      gnat_envp := envp;

      Initialize (SEH'Address);
      adainit;
      Ada_Main_Program;
      adafinal;
      Finalize;
      return (gnat_exit_status);
   end;

--  BEGIN Object file/option list
   --   ./spark.o
   --   ./spark-text_io.o
   --   ./simple_railway.o
   --   ./main.o
   --   ./spark-text_io-integer_io.o
   --   ./as_io_wrapper.o
   --   -L./
   --   -L/usr/gnat/lib/gcc/x86_64-pc-linux-gnu/4.9.3/adalib/
   --   -static
   --   -lgnat
--  END Object file/option list   

end ada_main;
