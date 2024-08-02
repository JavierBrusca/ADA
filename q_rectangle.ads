package Q_RECTANGLE is

   -- {
   --  Package that contains procedures to calculate de perimeter and area
   --  of two values inserted by the user.
   -- }

   type T_NATURAL_UNITS is new Float range 0.0 .. Float'Last;

   procedure P_CALCULATE_PERIMETER_AREA ( V_BASE : in out T_NATURAL_UNITS ;
                                          V_HEIGHT : in out T_NATURAL_UNITS );

end Q_RECTANGLE;
