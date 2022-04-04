A compiler instrumentation thingy which checks memory addresses - a bit like a faster [[Valgrind#memcheck]].

Relies on [[Virtual memory]] to operate somewhat efficiently - it maps a huge amount of "shadow memory" where each bit covers a byte (or something) of actual memory, and then instruments loads/stores to check and update that shadow memory.

Normal ASAN isn't safe for production use - it's mostly handy for debugging, [[Fuzzing]], [[Vulnerability research]], etc. There's some variant that *is* made to be used in production, though...

# Flashcards
#flashcards
Is normal ASAN safe for production use?::No
<!--SR:!2022-04-10,47,250-->
