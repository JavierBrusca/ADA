with ADA.Text_IO;


procedure Tipos_Basicos_2 is
   
   package T_IO renames ADA.Text_IO;
   
   -- tipos nuevos
   N: Natural; -- positivos enteros incluyendo al 0 
   P: Positive; -- positivos sin el 0 
   Flag: Boolean; -- true o false
   
   
begin
   T_IO.New_Line(1);
   T_IO.Put_Line("TIPOS BASICOS 2");
   T_IO.Put_Line("=====================");

   N:= 4;
   Flag:= True;
   P:= 10; -- si es negativo da error
   
   T_IO.Put_Line("El valor de N es: " & Natural'Image(N));
   T_IO.Put_Line("El valor de P es: " & Positive'Image(P));
   T_IO.Put_Line("El valor de Flag es: " & Boolean'Image(Flag));

end Tipos_Basicos_2;
