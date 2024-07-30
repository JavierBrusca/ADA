with ADA.Text_IO;
with Ada.Exceptions; -- libreria para manejar las excepciones

procedure Excepciones1 is
   package T_IO renames ADA.Text_IO;
   
   
   I : Integer;
   
   
begin
   T_IO.New_Line(1);
   T_IO.Put_Line("EXCEPCIONES 1");
   T_IO.Put_Line("=====================");
   I := 0;
   I := 4 / I; -- esto dará un error Contraint_Error
      T_IO.New_Line(1);

exception
   when Constraint_Error =>
      T_IO.Put_Line("Intento de dividir por 0 ");

   when Except:others =>
      T_IO.Put_Line("Excepcion imprevista" & Ada.Exceptions.Exception_Name (Except) & " en " & Ada.Exceptions.Exception_Message (Except));
      
   

   
end Excepciones1;
