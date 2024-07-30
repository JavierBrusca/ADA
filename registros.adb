with ADA.Text_IO;
with ADA.Strings.Unbounded;


procedure Registros is
   
   package T_IO renames ADA.Text_IO;
   package S_UN renames ADA.Strings.Unbounded;

   
   type Persona is record -- registro
      Nombre : S_UN.Unbounded_String := S_UN.To_Unbounded_String("");
      Edad : Integer := 20;
   end record;
   
   P : Persona;
   
   type Grupo is array (1..10) of Persona;
   
   L: Grupo;
   
begin
   T_IO.New_Line(1); 
   T_IO.Put_Line("REGISTROS");
   T_IO.Put_Line("=====================");
   
   P.Edad := 15;
   P := (S_UN.To_Unbounded_String("Luis") , 25);
   T_IO.Put_Line("Nombre: " & S_UN.To_String(P.Nombre) & ", Edad: " & Integer'Image(P.Edad));

   P := (Nombre => S_UN.To_Unbounded_String("Pepe"), Edad=> 10);
   T_IO.Put_Line("Nombre modificado: " & S_UN.To_String(P.Nombre) & ", Edad modificada: " & Integer'Image(P.Edad));

   L(1).Edad := 15;
   L(1) := (S_UN.To_Unbounded_String("Luis"), 25);
   L(1).Nombre := S_UN.To_Unbounded_String("Pepito palotes");
   T_IO.Put_Line("Nombre modificado: " & S_UN.To_String(L(1).Nombre) & ", Edad modificada: " & Integer'Image(L(1).Edad));

end Registros;
