# Problem
When doing [[Coverage-guided fuzzing]], traditionally hard to get past certain "roadblocks"...

[[Driller (fuzzing)|Driller]] describes this as "fuzzing works within a compartment", where a compartment is delimited by these roadblocks

Classic examples are generally of two forms:

## Magic values
```
void foo(uint32_t x) {
  if (x == 0xDEADBEEF) bug();
}
```
Unless you either have the magic value (DEADBEEF) in your seed files or dictionary, you'll never guess it randomly. Because the check is *atomic*, there's no new coverage if you guess only part of the magic value - so you can't ratchet your way up!

These are quite common, but are at least easy enough to solve manually - add the magic value to your dictionary, or add a seed that contains the magic value.

Alternatively, LAF, CompCov, etc. can often solve these automatically! (But watch out for generic comparison functions - memcmp etc - because then coverage only shows up *in memcmp*)

## Checksums

```
void foo(char *x, size_t len, uint32_t provided_crc) {
  if (crc32(x, len) == provided_crc) {
    bug();
  }
}
```
These are less common than magic values, but much more annoying.

For a magic value, all you have to do is get that value present in your corpus/dictionary, and then things mostly work. Once it's there, fuzzing generally doesn't invalidate it (unless it overwrites the magic value, which, whatever). But for a checksum, you generally must *modify the target* (either through patching source or from binary [[Reverse engineering]])- causing the checksum check to always succeed, or forcing the computed checksum to a particular value (the latter is nicer because you can also fuzz the bad-checksum path). Adding one correct checksum value won't help much, because any mutations will invalidate the checksum.

For linear checksums (e.g. a literal checksum or a [[Cyclic redundancy check|CRC]]), wonder if you could do anything interesting to generically work around it...
## Solutions
[[SAGE (fuzzing)]] 
[[Driller (fuzzing)]]

# See also
[[Irreducible complexity (evolution)]]