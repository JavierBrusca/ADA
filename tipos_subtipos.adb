with ADA.Text_IO;

procedure Tipos_Subtipos is
   package T_IO renames ADA.Text_IO;

   subtype Dia_Mes is Integer range 1..31;
   type Nuevo_Dia_Mes is new Integer range 1..31;
   -- se hacen tipos y subtipos para que puedan ser compatibles entre ellos 
   -- si no fueran subtipos no podrían ser compatibles 
   I: Integer;
   D: Dia_Mes;
   ND: Nuevo_Dia_Mes;
   
begin
   
   T_IO.New_Line(1);
   T_IO.Put_Line("TIPOS Y SUBTIPOS");
   T_IO.Put_Line("=====================");
   
   I := 12;    -- correcto
   D := 30;     -- correcto
   -- D := I * 3; -- correcto pero mandará una excepción porque se pasa del rango 
   
   -- ND := I;    -- error de compilación por tipos incompatibles
   ND := Nuevo_Dia_Mes(I); -- esto si que funciona porque es una convesión EXPLICITA
   T_IO.Put_Line("El valor de ND es: " & Nuevo_Dia_Mes'Image(ND));
   
   -- al ser un subtipo de Integer entonces si que se puede
   ND:= Nuevo_Dia_Mes(D);
   T_IO.Put_Line("El valor de ND es: " & Nuevo_Dia_Mes'Image(ND));

   
end Tipos_Subtipos;
