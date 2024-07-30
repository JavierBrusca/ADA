with ADA.Text_IO;
with Ada.Numerics.Discrete_Random;


procedure Operadores is
      package T_IO renames ADA.Text_IO;

   A : Integer := 5;
   B : Integer := -3;
   C , D : Float;
   
   -- Crear el generador de números aleatorios
   package Random_I is new Ada.Numerics.Discrete_Random(Integer);
   Gen : Random_I.Generator;
   I : Integer;
   
   
begin
   T_IO.New_Line(1);
   T_IO.Put_Line("OPERADORES");
   T_IO.Put_Line("=====================");
   
   if A = 0 then 
      T_IO.Put_Line("A vale 0");
  
   elsif A > 0 then 
      T_IO.Put_Line("A es positivo");
   else 
      T_IO.Put_Line("A es negativo 0");
   end if;
   
   if A > 0 and B > 0 then 
      T_IO.Put_Line("A y B son positivos");
   else 
      T_IO.Put_Line("A o B son negativos");
   end if;
   
   C := 0.0;
   D := -3.2;
   
   if C > 0.0 and then B/A > 0 then 
      T_IO.Put_Line("Correcto");
   else    
      T_IO.Put_Line("Incorrecto");
   end if;
   
   Random_I.Reset(Gen);
   -- Generar un valor aleatorio para I en el rango 1..20
   I := Random_I.Random(Gen) mod 20 + 1;
   
   case I is 
      when 1 => 
         T_IO.Put_Line("I es 1");
      when 2..10 => 
         T_IO.Put_Line("I es pequeña");
      when 13 | 15 | 17 | 19 => 
         T_IO.Put_Line("I es grande e impar");
      when others => 
         T_IO.Put_Line("I es grande y par");
         
   end case;
end Operadores;
