Some chips with [[Readout protection]] have a [[Race condition]] - initiating a bulk erase immediately allows reading [[Flash memory|flash]]!

If you're lucky, readout protection will have been removed *as soon as the erase command was issued*, or the readout protection control bits are at the start of flash (and so get erased first), and you'll just be able to read [[Firmware]] out.
