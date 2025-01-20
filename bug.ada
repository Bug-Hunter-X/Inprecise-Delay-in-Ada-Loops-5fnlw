procedure Example is
   Count : Integer := 0;
begin
   loop
      Count := Count + 1;
      exit when Count > 10;
      delay 0.1; -- Potential issue: delay might not be precise
   end loop;
end Example; 