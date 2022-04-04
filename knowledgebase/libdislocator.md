[[Chaos monkey]] for [[Memory allocation]]. See [the official README.](https://github.com/google/AFL/blob/master/libdislocator/README.dislocator)

Does things like add [[Guard page|guard pages]] before/after allocations to catch [[Buffer overflow]]s (especially on *reads*, which often don't crash, but can still have security impact (especially as [[Information leak|infoleaks]])), unmaps freed memory to spot [[Use-after-free]]s, randomizes the contents of new allocations to make [[Uninitialized memory use]] more obvious

Part of [[AFL (fuzzer)]].

Meant to be [[LD_PRELOAD]]ed into your fuzzing target.

# Flashcards
#flashcards 

[[AFL (fuzzer)]]'s "abusive memory allocator" is called ==libdislocator==.
<!--SR:!2022-03-15,34,270-->