[[Flash memory]] can have interesting results when you play with supply voltage - both during reading, during erasing, and during programming.

Probably some differences in [[NAND flash]] v.s. [[NOR flash]] response?

Below is mostly based on a PIC microcontroller's internal flash. I assume that would be [[NOR flash]]... but not sure...

## When reading
I suspect this is due to changing thresholds in the [[Sense amplifier]]s.

Drop the voltage low enough and I started seeing bits being "biased" towards one value (forget if it was 0 or 1)...

## When erasing
Seemed to mostly either erase or not erase bits.

Believe this is due to the internal [[Charge pump]] failing to generate a high enough voltage?

## When programming

Forget a lot about this part but iirc it mostly behaved like erasing but in reverse... guess because of a similar [[Charge pump]] phenomenon?