with ADA.TEXT_IO; use ADA.TEXT_IO;
with Q_SQUARE; use Q_SQUARE;

package body Q_SQUARE is
   -- {
   --  Package that contains procedures to calculate de perimeter and area
   --  of one value inserted by the user. (It is a square so we only need
   --  one value in order to calculate area/perimeter)
   -- }
   
   package Q_UNIDADES_IO is new ADA.TEXT_IO.FLOAT_IO( T_NATURAL_UNITS );
   use Q_UNIDADES_IO;

   -- [
   --  Procedure to calculate de perimeter/area of a square
   -- ]
   procedure P_CALCULATE_PERIMETER_AREA ( V_SIDE : in out T_NATURAL_UNITS) is
      V_PERIMETER : T_NATURAL_UNITS := 0.0;
      V_AREA : T_NATURAL_UNITS := 0.0;
   begin 
      
      V_PERIMETER := 4.0 * V_SIDE;
      V_AREA := V_SIDE * V_SIDE;
      
      Put_Line("PERIMETER ");
      Put(Item => V_PERIMETER, Fore => 1, Aft => 2, Exp => 0);
      New_Line;
      
      Put_Line("AREA ");
      Put(Item => V_AREA, Fore => 1, Aft => 2, Exp => 0);
      New_Line;
      
   end P_CALCULATE_PERIMETER_AREA;
end Q_SQUARE;
