In heavily [[Pipeline (computing)|pipelined]] CPUs, handling [[Conditional branch|conditional]] or [[Indirect branch]]es can be tricky, because a naive implementation must wait at least for the condition / destination address to be computed before executing any subsequent instructions.

Speculative execution involves "running" instructions even if you're not sure they'll be executed, and then "throwing away" or "rolling back" the changes to state those instructions would have made if you later determine they shouldn't have been run.

[[Branch predictor]] information is especially useful for figuring out whether a branch is likely to be taken or not taken - this also creates a useful [[Microarchitectural side-channel]], though.