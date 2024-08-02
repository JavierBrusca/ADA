with Ada.Text_IO; use Ada.Text_IO;
with Edad; use Edad;

package body Edad is

   procedure ComprobarEdad (Edad : in out Integer) is 
   begin 
      case Edad is
      when 0 .. 15 =>
         Put_Line("ud puede jugar a Verdad o Consecuencia");
      when 16 =>
         Put_Line("ud puede comprar un billete de lotería");
      when 17  =>
         Put_Line("ud puede aprender a manejar");
      when 18 .. Integer'Last =>
         Put_Line("ud puede votar");
      when others => 
         Put_Line("Ha ocurrido un error");
      end case;
   end ComprobarEdad;

end Edad;
