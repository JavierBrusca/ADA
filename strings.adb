with ADA.Text_IO;

-- ES MUY IMPORTANTE LOS TAMAÑOS DEL STRING. SE TIENE QUE DELIMITAR UN RANGO PARA QUE FUNCIONE 
-- POR ESTA RAZÓN NO SON PRÁCTICOS 


-- MIRAR STRINGS 2

procedure Strings is
 
   package T_IO renames ADA.Text_IO;

   C : Character := 'A';
   --  S1 : String;          -- no compila: tamaño desconocido
   S2 : String := "hola";    -- correcto: S2 toma tamaño del valor inicial (4) 
   S3 : String(1..10);       -- correcto: S3 siempre tendrá tamaño 10 
begin
  
   T_IO.New_Line(1);
   T_IO.Put_Line("STRINGS");
   T_IO.Put_Line("=====================");
      
   -- S2 := "buenas";    -- no compila: tamaños distintos
   -- S3 := "hola";         -- no compila: tamaños distintos
      
   S3 (1..4) := "hola";  -- correcto: usa solo 4 carácteres de los 10 disponibles 
      
   T_IO.Put_Line(S3);
      
end Strings;
