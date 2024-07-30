with ADA.Text_IO;
with ADA.Strings.Unbounded;


procedure Strings2 is
   
   package T_IO renames ADA.Text_IO;
   package S_UN renames ADA.Strings.Unbounded;
   
   US : S_UN.Unbounded_String;
   
begin
   
   T_IO.New_Line(1); 
   T_IO.Put_Line("STRINGS 2");
   T_IO.Put_Line("=====================");
   
   US := S_UN.To_Unbounded_String("Hola");
   US := S_UN.To_Unbounded_String("como estamos");
   US := S_UN.To_Unbounded_String(S_UN.To_String(US) & " todos");  -- SALIDA: como estamos todos
   
   T_IO.Put_Line(S_UN.To_String(US));
   
end Strings2;
