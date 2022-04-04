On some chips with [[Readout protection]], the bits in [[Flash memory]] that control that protection are erased before some or all of the data in flash!

Initiate a bulk erase, then remove power from the device (or possibly assert a [[Reset (electronics)|reset]] or something).

If the readout protection control bits are at the start of flash, this can erase them while leaving the actual [[Firmware]] intact, or at least mostly intact.