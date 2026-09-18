pragma Ada_2022;
with Ada.Exceptions;
with Ada.Characters.Handling;
package body Exception_Info_Demo is
   package X renames Ada.Exceptions;

   function Caught_Message return String is
   begin
      raise Demo_Error with "boom";
   exception
      when E : Demo_Error =>
         return X.Exception_Message (E);
   end Caught_Message;

   function Caught_Name_Mentions_Demo return Boolean is
   begin
      raise Demo_Error with "x";
   exception
      when E : Demo_Error =>
         declare
            N : constant String :=
              Ada.Characters.Handling.To_Upper (X.Exception_Name (E));
         begin
            return (for some I in N'Range =>
                      I + 9 <= N'Last
                      and then N (I .. I + 9) = "DEMO_ERROR");
         end;
   end Caught_Name_Mentions_Demo;

   function Information_Longer_Than_Message return Boolean is
   begin
      raise Demo_Error with "short";
   exception
      when E : Demo_Error =>
         return X.Exception_Information (E)'Length
           > X.Exception_Message (E)'Length;
   end Information_Longer_Than_Message;

end Exception_Info_Demo;
