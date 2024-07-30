with ADA.Text_IO;

procedure Procedures is
   package T_IO renames ADA.Text_IO;
   
   procedure HolaMundo is 
      -- AQUI VARIABLES DE LA FUNCION HOLA MUNDO 
     begin
        T_IO.Put_Line("ESTOY DENTRO DEL HOLA MUNDO");
        T_IO.Put_Line("###########################");
   end HolaMundo;
   
   
   procedure Suma (A : in Integer; B : in Integer; C : out Integer) is 
      
     begin 
        T_IO.New_Line(1);
        T_IO.Put_Line("ESTOY DENTRO DE LA SUMA");
        T_IO.Put_Line("###########################");
        c := A + B;
   end Suma;   
   
   
   -- AQUI VAN LAS DECLARACIONES DE TIPOS, CONSTANTES Y VARIABLES GLOBALES
   P : Integer;
   Q : Integer;
   
begin
   HolaMundo;
   
   P := 7;
   Suma( P , P , Q ); -- Se le asigna a Q el valor desde la funcion porque es un valor de vuelta "out"
   T_IO.Put_Line("El valor de Q es: " & Integer'Image(Q));
   
end Procedures;
