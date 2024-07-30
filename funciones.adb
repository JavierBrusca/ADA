with ADA.Text_IO;


procedure Funciones is
   package T_IO renames ADA.Text_IO;
   
   function Factorial ( N : Positive ) return Positive is 
      Resultado : Integer;
      
      begin
      
      if ( N = 1) then 
         Resultado := 1;
      else 
         Resultado := N * Factorial(N-1);
      end if;
      T_IO.New_Line(1);
      T_IO.Put_Line("ESTOY DENTRO DEL FACTORIAL");
      T_IO.Put_Line("###########################");
      
      return Resultado;
   
   end Factorial;
   
   P : Integer;
   
begin
   P := 1;
   
   T_IO.Put_Line("El factorial de " & Integer'Image(P) & " es: " & Integer'Image(Factorial(P)));
end Funciones;
