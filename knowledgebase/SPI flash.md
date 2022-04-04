Standard is "25 series" interface... one opcode byte on COPI, then data. Since it's often found in an 8-pin package ([[Integrated circuit package#SOIC|SOIC-8]] or [[Integrated circuit package#WSON|WSON-8]])  [[Serial Peripheral Interface#QSPI|QSPI]] is pretty common too, especially on larger capacity chips. Larger capacity chips also need more address bits, annoyingly, which sort of breaks the whole "standard" which has IIRC only 3 address bytes for the common commands, so you have to put it in a special mode. It's silly.

JESD216B mostly describes SFDP - autodiscovery of flash parameters, basically - but ends up describing a lot of the protocol.
# Uses
Firmware for most PCs is stored on SPI flash...
