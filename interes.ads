package Interes is

   type T_NATURAL_UNITS is new Float range 0.0 .. Float'Last;

   procedure CalcularInteres 
     ( Capital : in out T_NATURAL_UNITS; 
       Anios : in out Integer );

end Interes;
