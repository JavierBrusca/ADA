with ADA.Text_IO;

-- tipos de datos
with enumerados;
with punteros;
with tipos_basicos;
with tipos_basicos_2;
with tipos_subtipos;
with strings;
with strings2;


-- estructuras condicionales y bucles
with operadores;
with tablas_de_multiplicar;


--excepciones
with excepciones1;
with excepciones2;

-- arrays y string
with arrays;
with arrays2;
with registros;

procedure Main is
   package T_IO renames ADA.Text_IO;

begin
   T_IO.New_Line(1);
   T_IO.Put_Line("MAIN");
   T_IO.Put_Line("=====================");

   -- tipos de datos
   tipos_basicos;
   tipos_basicos_2;
   tipos_subtipos;
   enumerados;
   strings;
   strings2;

   -- estructuras condicionales y bucles
   operadores;
   tablas_de_multiplicar;


   --excepciones
   excepciones1;
   excepciones2;

   --arrays
   arrays;
   arrays2;
   registros;

end Main;
