with ADA.Text_IO;


procedure Arrays2 is
      
   package T_IO renames ADA.Text_IO;
   package Int_IO is new Ada.Text_IO.Integer_IO(Integer);

   A : array (1..6) of Integer;
   B : array (0..5) of Integer;
   C : array (-1..1) of Integer;
   D : array (1..100000) of Float;
   
begin
   
   T_IO.New_Line(1);
   T_IO.Put_Line("ARRAYS 2");
   T_IO.Put_Line("=====================");
   
   A := (3, 4, 5, 2, -1, 3);   -- agregado posicional
      
   T_IO.Put_Line("El array A es:");
   for I in A'Range loop
      Int_IO.Put(A(I));
      T_IO.Put(" ");
   end loop;
   T_IO.New_Line;
   
   A := (1=> 5, 2=> 6, 6=> 10, 5=> 9, 3=> 8, 4 => 7);
      
   T_IO.Put_Line("El array modificado A es:");
   for I in A'Range loop
      Int_IO.Put(A(I));
      T_IO.Put(" ");
   end loop;
   T_IO.New_Line;
   
   A := (3=> 5, others=>0);
   T_IO.Put_Line("El array otra vez modificado A es:");
   for I in A'Range loop
      Int_IO.Put(A(I));
      T_IO.Put(" ");
   end loop;
   T_IO.New_Line;
end Arrays2;
