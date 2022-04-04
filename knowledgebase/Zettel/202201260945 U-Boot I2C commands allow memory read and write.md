[[U-Boot (bootloader)]] has some seemingly innocuous [[I2C (bus)|I2C]] commands.

But they read data from I2C *into an arbitrary memory address*, and write data *from an arbitrary memory address* to I2C. I.e. providing read/[[Write-what-where]]!

Combined with a malicious I2C device (or even without it, probably, if you try hard enough) this allows breaking out of a locked-down [[U-Boot (bootloader)#U-Boot shell|U-Boot shell]].

https://research.nccgroup.com/2020/07/22/depthcharge mentions this in passing