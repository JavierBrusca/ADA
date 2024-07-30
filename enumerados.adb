with ADA.Text_IO;

procedure Enumerados is
   type Colores is (Rojo, Amarillo, Verde);
   C: Colores := Rojo; -- tipo definido arriba
   Indice : Integer;
    -- renombrar el package y que sea mas facil
   package T_IO renames ADA.Text_IO;

begin
   T_IO.New_Line(1);
   T_IO.Put_Line("ENUMERADOS");
   T_IO.Put_Line("=====================");
   
   -- C:= "Rojo"; -- no funciona porque rojo es un string
   Indice:= Colores'Pos(C);   -- ok, definido arriba
   -- C:= C + 1; -- no compila, no son enteros
   T_IO.Put_Line("La posicion de Rojo es: " & Integer'Image(Indice));
   T_IO.Put_Line("El valor del enumerado C es: " & Colores'Image(C));

end Enumerados;
