with Ada.Text_IO; use Ada.Text_IO;
with Ada.Float_Text_IO;
with Q_SQUARE;
with Q_RECTANGLE;
with Interes;
with Edad;
procedure Main is
   -- ejercicio 1
   V_SIDE : Q_SQUARE.T_NATURAL_UNITS := 0.0;

   -- ejercicio 2
   V_HEIGHT : Q_RECTANGLE.T_NATURAL_UNITS := 0.0;
   V_BASE : Q_RECTANGLE.T_NATURAL_UNITS := 0.0;

   -- ejercicio 4
   V_Capital : Interes.T_NATURAL_UNITS := 0.0;
   V_Anos : Integer range 2000 .. 2024 := 2000;

   -- ejercicio 6
   V_Edad : Positive := 1;
begin

-- EJERCICIO 1
   Put_Line("Please, insert the value of the side of the square");
   V_SIDE := Q_SQUARE.T_NATURAL_UNITS'Value(Get_Line);
   -- Put_Line( Q_SQUARE.T_NATURAL_UNITS'Image(V_SIDE));
   Q_SQUARE.P_CALCULATE_PERIMETER_AREA(V_SIDE);

-- EJERCICIO 2
    Put_Line("Rectangle Base ");
    V_BASE := Q_RECTANGLE.T_NATURAL_UNITS'Value(Get_Line);
    Put_Line("Rectangle height ");
    V_HEIGHT := Q_RECTANGLE.T_NATURAL_UNITS'Value(Get_Line);
    Q_RECTANGLE.P_CALCULATE_PERIMETER_AREA(V_BASE , V_HEIGHT);

-- EJERCICIO 4
   --begin
   --   Put_Line("Por favor, ingrese el valor del capital total: ");
   --   V_Capital := Interes.Unidades_Natural'Value(Get_Line);
   --exception
   --   when Constraint_Error =>
   --      Put_Line("El valor del capital introducido no es convertible a float");
   --      return;
   -- end;

   --begin
   --   Put_Line("Por favor, ingrese el valor de los a�os vista: ");
   --   V_Anos := Integer'Value(Get_Line);
   --exception
   --   when Constraint_Error =>
   --      Put_Line("El valor de los anios introducido no esta en el rango (2000 - 2024)");
   --      return;
   --end;

   --Interes.CalcularInteres(V_Capital, V_Anos);

-- EJERCICIO 6

   --begin

   --   Put_Line("Introduce tu edad: ");
   --   V_Edad := Integer'Value(Get_Line);
   --   Edad.ComprobarEdad(V_Edad);

   --exception
   --   when Constraint_Error =>
   --      Put_Line("El valor no es un numero");
   --      return;
   -- end;


exception
   when Constraint_Error =>
      -- Ejercicio 1 y 2
      --Put_Line("El valor introducido no es convertible a float");

      -- Ejercicio 4
      Put_Line("Se produjo un error de restricci�n en el c�lculo del inter�s");

end Main;
