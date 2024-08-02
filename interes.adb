with Ada.Text_IO; use Ada.Text_IO;
with Interes; use Interes;

package body Interes is
  package Q_Unidades_IO is new Ada.Text_IO.Float_IO(T_NATURAL_UNITS);
  use Q_Unidades_IO;
   
  procedure CalcularInteres 
    ( Capital : in out T_NATURAL_UNITS; 
      Anios : in out Integer) is
  begin
      Put_Line("Hola");
  end CalcularInteres;

end Interes;
