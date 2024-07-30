with ADA.Text_IO;

-- EN ADA NO EXISTEN ARRAYS DINÁMICOS, NO  PUEDEN VARIAR DURANTE EL TIEMPO DE EJECUCIÓN

procedure Arrays is
   package T_IO renames ADA.Text_IO;
   package Int_IO is new Ada.Text_IO.Integer_IO(Integer);
   
   
   A , B : array (1..6) of Integer;         -- tipo anónimo
   AA : array (0..2, 0..6) of Integer;      -- tipo anónimo
   
   type Vector is array (1..6) of Integer;  -- tipo con nombre Vector
   C , D: Vector;                           -- tipo nombre Vector
   

begin
   T_IO.New_Line(1);
   T_IO.Put_Line("ARRAYS");
   T_IO.Put_Line("=====================");
   
   A := (3, 4, 5, 2, -1, 3);
   
   T_IO.Put_Line("El array A es:");
   for I in A'Range loop
      Int_IO.Put(A(I));
      T_IO.Put(" ");
   end loop;
   T_IO.New_Line;
   
   A(4) := 4; -- pone en la posicion 1 un 4 ( no va del 0 a N, empieza en el 1) 
   
   T_IO.Put_Line("Despues de modificar, el array A es:");
   for I in A'Range loop
      Int_IO.Put(A(I));
      T_IO.Put(" ");
   end loop;
   T_IO.New_Line;
      T_IO.New_Line(1);

   for I in AA'Range(1) loop
      for J in AA'Range(2) loop
         AA(I, J) := 0;
      end loop;
   end loop;
   
   AA( 0, 3) := 5;
   T_IO.Put_Line("El array AA es:");
   for I in AA'Range(1) loop
      for J in AA'Range(2) loop
         Int_IO.Put(AA(I, J));
         T_IO.Put(" ");
      end loop;
      T_IO.New_Line;
   end loop;
         T_IO.New_Line(1);

   -- B := A; -- no compila: tipos incompatibles
   -- C := A; -- no compila: tipos incompatibles
   
   C := (2, 3, 4, 5, 6, 7);
   D := C;    -- esto si que funciona por ser tipos con nombre

end Arrays;
