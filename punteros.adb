with ADA.Text_IO;
with System;

procedure Punteros is
   package T_IO renames ADA.Text_IO;

   I : aliased Integer;
   J : aliased Integer;
   S : String(1..5);
   P : access Integer;
   Q : access Integer;
   
begin
   T_IO.New_Line(1);
   T_IO.Put_Line("PUNTEROS");
   T_IO.Put_Line("=====================");
   
   I := 5;
   J := -4;
   S := "todos";
   
   P := I'Access; -- aqui guardo la dirección de memoria
   Q := P;        -- hago que Q también apunte a la misma dirección de memoria que P
   P.all := 7;    -- asigno un valor a la variable dentro de la memoria
   T_IO.Put_Line("El valor en la direccion de memoria en I es: " & Integer'Image(P.all));
   Q.all := Q.all + J; -- asigno valor a la variable Q
   T_IO.Put_Line("El valor en la direccion de memoria en I es: " & Integer'Image(Q.all));
   I := P.all - 1;
   T_IO.Put_Line("El valor en I es: " & Integer'Image(I));
   Q := J'Access; -- Q ya no apunta a I, si no a J
   T_IO.Put_Line("El valor en la direccion de memoria J es : " & Integer'Image(Q.all) & " (No se ha cambiado en ningun momento)");

   if(true) then
       T_IO.Put_Line("El valor de S es: " & S);
   end if;
       
end Punteros;
