with System.Storage_Elements;

procedure Main is
   procedure Terminal_Write (A : String; B : Integer) is
      Terminal : String (1 .. B);
      for Terminal'Address use
        System.Storage_Elements.To_Address (16#10000000#);
   begin
      for I in 1 .. B loop
         Terminal (I) := A (I);
      end loop;
   end Terminal_Write;
   Msg : String := "Hello World";
begin
   Terminal_Write (msg, 15);
end Main;
