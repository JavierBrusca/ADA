with ADA.Text_IO;

-- PROGRAMA QUE MUESTRA LAS TABLAS DE MULTIPLICAR
procedure Tablas_De_Multiplicar is
   
   package T_IO renames ADA.Text_IO;
   Resultado : Integer := 0;
   
begin
   T_IO.New_Line(1);
   T_IO.Put_Line("TABLAS DE MULTIPLICAR CON 2 FOR");
   T_IO.Put_Line("=====================");
   
   for I in 1 .. 2 loop -- I es el índice del bucle que usaremos para controlar el bucle de 2 en 2
      declare
         Fila: Integer := I * 2; -- Fila es calculada en cada iteración del bucle
      begin
         for Columna in 1 .. 2 loop
            Resultado := Fila * Columna;
            T_IO.Put_Line(Integer'Image(Fila) & " * " &
                                 Integer'Image(Columna) & " = " & 
                                 Integer'Image(Resultado));
         end loop;
      end;
   end loop;
                       
end Tablas_De_Multiplicar;
