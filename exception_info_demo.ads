--  Ada 2022 topic: Ada.Exceptions (Message / Information / Name).
pragma Ada_2022;
package Exception_Info_Demo is
   Demo_Error : exception;
   --  Raise Demo_Error with a message; return Exception_Message text.
   function Caught_Message return String;
   --  True if Exception_Name contains "DEMO_ERROR" (case folded).
   function Caught_Name_Mentions_Demo return Boolean;
   --  True if Exception_Information is longer than Exception_Message.
   function Information_Longer_Than_Message return Boolean;
end Exception_Info_Demo;
