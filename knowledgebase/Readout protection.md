In a device (especially a [[Microcontroller]]), readout protection attempts to protect against unauthorized reading of [[Flash memory]] or other internal storage.

Often an excellent target for [[Fault injection]].

# Implementation methods
## Flash-based
It's possible to just store a "lock" bit or something in flash, and then block reads/writes from [[JTAG]] or whatever if set.
![[202202072025 Readout protection removed by bulk erase]]]
## [[eFuse]]-based
Seems more common on [[System-on-chip|SoC]]s, etc. eFuse blocks debug access or whatever when blown.