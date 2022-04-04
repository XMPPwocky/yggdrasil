[[Flash memory]] requires a decent voltage to erase or program, generally generated using an internal [[Charge pump]]. If you drop the supply voltage while the chip is erasing the firmware, but restore the supply voltage to normal just before the chip writes [[Readout protection]] control bits, those bits may be erased but the [[Firmware]] may still be there!

If you're unlucky, you'll get some random bitflips in the firmware still... read multiple chips?

This is especially useful when readout protection bits are written *last* (so [[202202072020 Readout protection bypass by powering off]] doesn't work).