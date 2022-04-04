	 Often when [[Fault injection]] (or regular/[[Murphy v.s. Satan|"Murphy"]] faults I suppose, e.g. in [[Safety-critical system]]s) is a concern, values of high [[Hamming distance]] will be used- the idea is that glitching may flip some bits but is unlikely to flip *many* bits just right.

In particular, "locked" v.s. "unlocked" values for [[Readout protection]] often have high Hamming distances.

You also generally don't see e.g. `0x00` v.s. `0xFF`- though they're Hamming-distance 8 away from each other! presumably because intuitively they both seem plausible glitched values. (e.g. a glitch could fairly easily set all bits to zeroes or ones). Something like `0xAA` v.s. `0xCC` is more common.