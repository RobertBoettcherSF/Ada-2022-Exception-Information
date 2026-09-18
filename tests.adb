pragma Ada_2022;
with Ada.Assertions; use Ada.Assertions;
with Ada.Text_IO; use Ada.Text_IO;
with Exception_Info_Demo; use Exception_Info_Demo;
procedure Tests is
begin
   Assert (Caught_Message = "boom");
   Put_Line ("PASS Exception_Message");
   Assert (Caught_Name_Mentions_Demo);
   Put_Line ("PASS Exception_Name mentions DEMO_ERROR");
   Assert (Information_Longer_Than_Message);
   Put_Line ("PASS Exception_Information longer than Message");
   Put_Line ("All Exception_Information topic tests passed.");
end Tests;
