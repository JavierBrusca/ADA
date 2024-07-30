with ADA.Text_IO;
with Ada.Exceptions; -- libreria para manejar las excepciones


procedure Excepciones2 is    
   package T_IO renames ADA.Text_IO;

   I , J : Integer;
begin
   
   T_IO.New_Line(1);
   T_IO.Put_Line("EXCEPCIONES 2");
   T_IO.Put_Line("=====================");

   I := 0;
   
   while I < 50 loop
      begin
         J := 40 / I; -- elevará una expeción Constraint_Error
      
      Exception
         when Constraint_Error => 
            T_IO.Put_Line("Intento de dividir por 0");

      end;
      
      T_IO.Put_Line("Resultado: " & Integer'Image(J));
      I := I + 10;
   end loop;
   
   
end Excepciones2;
