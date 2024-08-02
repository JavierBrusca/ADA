with Ada.Text_IO; use Ada.Text_IO;
with Q_RECTANGLE; use Q_RECTANGLE;

package body Q_RECTANGLE is
   
  -- {
  --  Package that contains procedures to calculate de perimeter and area
  --  of two values inserted by the user.
  -- } 
   
  package Q_UNIDADES_IO is new Ada.Text_IO.Float_IO( T_NATURAL_UNITS );
  use Q_UNIDADES_IO;

  procedure P_CALCULATE_PERIMETER_AREA 
    (V_BASE : in out T_NATURAL_UNITS; 
     V_HEIGHT : in out T_NATURAL_UNITS) is
      
      V_PERIMETER : T_NATURAL_UNITS := 0.0;
      V_AREA : T_NATURAL_UNITS := 0.0;
  begin 
      V_PERIMETER := V_BASE * 2.0 + 2.0 * V_HEIGHT;
      V_AREA := V_BASE * V_HEIGHT;
      
      Put_Line("Rectangle Perimeter");
      Put(Item => V_PERIMETER, Fore => 1, Aft => 2, Exp => 0);
      New_Line;
      
      Put_Line("Rectangle Area");
      Put(Item => V_AREA, Fore => 1, Aft => 2, Exp => 0);
      New_Line;
  end P_CALCULATE_PERIMETER_AREA;
end Q_RECTANGLE;
