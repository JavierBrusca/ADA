with ADA.Text_IO;

procedure Tipos_Basicos is
   
   -- tipos de numeros
   I: Integer := 10;
   J, K: Integer:= 0; -- al estar definida ya no da el warning
   M: Integer:= 2 * I;
   F: Float;
   Pi: constant Float := 3.14159_26536;
   
   -- renombrar el package y que sea mas facil
   package T_IO renames ADA.Text_IO;

begin
   T_IO.New_Line(1);
   T_IO.Put_Line("TIPOS BASICOS");
   T_IO.Put_Line("=====================");
   J:= 2 * J;  -- correcto pero J debería de estar inicializado previamente
               -- dará un warning pero estará todo ok
   -- F := 2 * I; -- tipos incompatibles, error de compilación
   F := 2.0 * Float(I); -- correcto
   T_IO.Put_Line("El valor de I es: " & Integer'Image(I));
   T_IO.Put_Line("El valor de J es: " & Integer'Image(J));
   T_IO.Put_Line("El valor de F es: " & Float'Image(F));

end Tipos_Basicos;
