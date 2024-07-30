with ADA.Text_IO;

-- ES MUY IMPORTANTE LOS TAMA�OS DEL STRING. SE TIENE QUE DELIMITAR UN RANGO PARA QUE FUNCIONE 
-- POR ESTA RAZ�N NO SON PR�CTICOS 


-- MIRAR STRINGS 2

procedure Strings is
 
   package T_IO renames ADA.Text_IO;

   C : Character := 'A';
   --  S1 : String;          -- no compila: tama�o desconocido
   S2 : String := "hola";    -- correcto: S2 toma tama�o del valor inicial (4) 
   S3 : String(1..10);       -- correcto: S3 siempre tendr� tama�o 10 
begin
  
   T_IO.New_Line(1);
   T_IO.Put_Line("STRINGS");
   T_IO.Put_Line("=====================");
      
   -- S2 := "buenas";    -- no compila: tama�os distintos
   -- S3 := "hola";         -- no compila: tama�os distintos
      
   S3 (1..4) := "hola";  -- correcto: usa solo 4 car�cteres de los 10 disponibles 
      
   T_IO.Put_Line(S3);
      
end Strings;
