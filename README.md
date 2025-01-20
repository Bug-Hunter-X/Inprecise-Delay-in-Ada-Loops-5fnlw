# Ada Delay Imprecision Bug

This example demonstrates a potential issue with Ada's `delay` statement.  In real-time or time-critical applications, relying on `delay` for precise timing can lead to errors. The `delay` statement's accuracy depends on the underlying operating system and hardware, and it might not guarantee the exact delay specified.

**The bug:** The `delay 0.1` statement attempts to pause the program for 0.1 seconds.  However, the actual delay could be slightly longer or shorter, causing the loop to terminate earlier or later than expected.

**Possible Solutions:** For precise timing in Ada, consider using more robust mechanisms like high-resolution timers or dedicated real-time operating system (RTOS) functions. 

This example illustrates a subtle but critical issue in Ada programming when dealing with timing requirements.