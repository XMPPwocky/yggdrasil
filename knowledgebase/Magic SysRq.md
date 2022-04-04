On [[Linux]], a set of magic keys that do various things (mostly related to hang recovery and debugging)

[[UART]] interfaces will sometimes also expose this - SysRq is replaced by the UART "break" signal

"REISUB":
- R: un-Raw TTYs
- E: Kill all processes
- I: Kill -9 all processes
- S: Sync filesystems
- U: Unmount filesystems
- B: Reboot

Handled quite low-down in the keyboard driver

# Flashcards
#flashcards 

Linux kernels may listen for "Magic SysRq" keys on serial ports or UARTs, where the SysRq is replaced by ==the UART "break" condition==.
<!--SR:!2022-04-24,62,270-->