Intel Processor Trace logs information on [[Control flow]] to a [[Ring buffer]].

Seems like it's mostly for [[Reverse debugging]]?

Use for [[Coverage-guided fuzzing]] is complicated because the CPU logs only what's required to reconstruct control flow given the binary - e.g. unconditional branches are not logged, conditional branches are logged as a single bit, and only indirect branches have an address logged at all. Reconstructing a full control flow trace from this information is nontrivial and Intel's reference implementation is slower than just using [[Dynamic binary instrumentation]] (though some progress has been made here). 

Its predecessor was Intel Branch Trace Store (BTS)