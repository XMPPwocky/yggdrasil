A [[Boot ROM]] bug in [[iBoot (Apple bootloader)]].

Produces *non-[[Persistence|persistent]]* but very powerful compromise.

Also affects the Apple T2 chip, and can remove [[iCloud activation lock]] on vulnerable Macs (among other things)...

# Flashcards
#flashcards 
The checkm8 bug affects Apple's "A"-series chips from the ==A5== chip to the ==A11== chip.
<!--SR:!2022-04-06,50,270!2022-04-18,46,230-->

Does the checkm8 bug affect Macs?::Yes, if they have a [[T2 chip (Apple)|T2 chip]]
<!--SR:!2022-05-01,59,250-->

Can checkm8 be patched with a software update?::Almost certainly not, because it's in [[Boot ROM]]
<!--SR:!2022-04-13,57,290-->

The entry point for the checkm8 exploit is in the ==Boot ROM=='s ==[[Universal Serial Bus|USB]]== stack
<!--SR:!2022-03-30,37,250!2022-03-23,36,250-->