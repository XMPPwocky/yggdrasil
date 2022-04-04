Using [[Code coverage]] info to guide [[Fuzzing]].

Sometimes called "grey-box"...

# Problems
When used alone, suffers from the [[Fuzzing roadblock problem]].

## What's coverage?
Defining "coverage" is tricky- generally coverage info for fuzzing is based on [[Control flow graph]] paths- from the most basic (literally - [[Basic block]] coverage) to more complicated path-dependent ones (e.g. [[AFL (fuzzer)]]'s original coverage was basically a hash of "previous block, current block", and then logging hitcounts). Some tools (particularly those meant to work around the [[Fuzzing roadblock problem]]) do add data information, but...

## Misbehaving targets
Because the target is actually run, the target must actually be executable (somehow)- fuzzing code that runs on a different architecture requires extra work; a buggy target can misbehave seriously (up to and including `rm -rf /`)

## Detecting crashes
Only crashes are (generally) detected (often by looking at exit status or catching [[Signal (UNIX)|signals]]. [[202201251804 Fuzzing coverage collisions suck!]]]]

On the other hand, adding asserts to a target can help detect violations of invariants - or even do [[Differential fuzzing]].

# Implementations
Main implementations: [[libFuzzer]] and [[AFL (fuzzer)]] 

