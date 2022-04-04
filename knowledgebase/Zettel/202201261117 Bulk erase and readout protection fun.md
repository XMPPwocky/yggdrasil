For chips with [[Readout protection#Bulk erase|readout protection that's reset on bulk erase]]... the assumption is that it's secure because [[Flash memory]] will be wiped before readout protection is removed. But there's quite a few ways to have fun with this.

# Some ways
![[202202072016  Readout protection bypass erase race]]

![[202202072020 Readout protection bypass by powering off]]

![[202202072022 Readout protection bypass by carefully timed undervoltage]]

## More fun with voltage behavior
Because of [[202201261121 Flash memory voltage behavior]]... try dropping the supply voltage during a bulk erase, and/or increasing it when the option bytes or whatever are read. (Or vice versa!)

![[202202072024 Readout protection bypass by erase then warm boot]]

## General [[Fault injection|fault injection]]
Try to glitch the erase logic/[[Read-only memory|ROM]] code whatever into not doing the erase, or into at least skipping part of it...

#review