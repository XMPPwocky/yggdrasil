While it can be [[202201212213 High-speed buses are hard to tap|very hard to *sniff* a fast memory bus]], much less to [[Machine-in-the-middle|MITM]] one... the address lines are at least generally [[Parallel bus|parallel]]. In other words, a given bit in an address generally corresponds to one physical signal/trace.

This lets you do something very goofy - just short an address bit to ground or +V, forcing it high or low! 

This effectively *[[Aliasing (memory)|aliases]]* memory, e.g. if you short, say, the 16th least significant address bit to ground or +V... `0x00010000` and `0x00000000` are now *the same*.

[[Memory scrambling]] can make this more annoying (especially if it's dependent on the address itself), though seems like it should still be possible (albeit with more work...)

A little scary because [[202201251825 High-speed IO is less protected]]

Used for [[Nintendo Wii]] [[Console homebrew|homebrew]] hackery - "Team Twiizers" literally using tweezers to do this