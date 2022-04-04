In [[Coverage-guided fuzzing]], you generally assign each [[Basic block]] a random ID, which acts as an index into a "coverage map".

But random IDs can collide (and more than you'd think, thanks to the [[Birthday paradox]]). And on even medium-sized programs, collisions can become an issue - after all, a state transition whose ID collides with another won't be seen as new coverage, and thus the [[202201241614 Coverage-guided fuzzing "ratchet"|"ratchet"]] effect won't kick in! 

The one saving grace here is that *usually* you don't just discover one new basic block- you hit a new code path and thus end up with several new blocks. Unlikely they'll *all* collide. But still!