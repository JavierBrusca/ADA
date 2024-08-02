package Q_SQUARE is
   
   -- {
   --  Package that contains procedures to calculate de perimeter and area
   --  of one value inserted by the user. (It is a square so we only need
   --  one value in order to calculate area/perimeter)
   -- }
   
   
   type T_NATURAL_UNITS is new Float range 0.0 .. Float'Last;

   procedure P_CALCULATE_PERIMETER_AREA ( V_SIDE : in out T_NATURAL_UNITS );
   
end Q_SQUARE;
