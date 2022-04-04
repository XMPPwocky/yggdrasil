Annoying issue with [[Binary rewriting]] - you can't just move functions or data around, because other functions might use them. And this can be very indirect (e.g. vtables, jump tables...)

But an assembler (converting text to binary) can do exactly the substitutions needed, and indeed it must - compilers emit symbol references, etc.

The original instrumentation used by [[AFL (fuzzer)]] actually worked by doing terrifying text manipulation on assembly emitted by GCC... it seemed to basically work, though!