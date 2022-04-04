Note- not sure this applies to all [[STM32 (microcontroller)|STM32]]s... most of 'em, at least.

# Levels
## Level 0 
Full unlock, basically wide open
## Level 1
Default. A really interesting mode! #finishme 

## Level 2
Full lock, irreversible. Disables [[JTAG]] (including [[Boundary scan]]).

# Flashcards #flashcards 

On (most) STM32s, the [[Readout protection]] is controlled by the ==RDP== byte.
<!--SR:!2022-04-09,53,290-->

On (most) STM32s, the default readout protection level (after erase) is ==Level 1==.
<!--SR:!2022-03-08,26,250-->

On (most) STM32s, there are ==3== readout protection levels.
<!--SR:!2022-03-14,31,250-->

Can (most) STM32s always be reset to a "factory" state with a bulk erase?::No- if level 2 readout protection has been configured, that's irreversible.
<!--SR:!2022-04-12,45,230-->

On (most) STM32s, can JTAG be permanently disabled?::Yes - readout protection level 2 disables JTAG (permanently).
<!--SR:!2022-04-15,53,272-->

On (most) STM32s, RDP level ==0== is configured by writing ==0xAA== into the RDP byte.
<!--SR:!2022-03-24,31,230!2022-03-06,22,250-->

On (most) STM32s, RDP level ==1== is configured by writing ==any value other than 0xAA/0xCC== into the RDP byte.
<!--SR:!2022-03-01,20,250!2022-04-17,45,250-->

On (most) STM32s, RDP level ==2== is configured by writing ==0xCC== into the RDP byte. 
<!--SR:!2022-03-07,26,250!2022-03-16,23,230-->