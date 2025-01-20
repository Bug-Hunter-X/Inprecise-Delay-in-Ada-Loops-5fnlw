with Ada.Real_Time;
use Ada.Real_Time;
procedure Example_Solution is
   Count : Integer := 0;
   Start_Time : Time; 
   Elapsed_Time : Duration;
begin
   Start_Time := Clock;
   loop
      Count := Count + 1;
      exit when Count > 10;      
      Elapsed_Time := Clock - Start_Time;
      while Elapsed_Time < 0.1 * 1.0e9 loop -- 0.1 seconds in nanoseconds
         null;  --busy wait 
         Elapsed_Time := Clock - Start_Time;
      end loop; 
      Start_Time := Clock;  
   end loop;
end Example_Solution;