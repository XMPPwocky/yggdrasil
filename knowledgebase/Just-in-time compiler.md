A [[Compiler]] that runs *during program execution*, as opposed to an [[Ahead-of-time compiler]].

In theory, can perform strictly better than AOT compilation, because of the availability of better [[Profiling (software)]] information - a JIT is arguably a superset of AOT compilation (at least if the JIT can persist information. e.g. imagine a "JIT" compiler that just does AOT compilation on startup...). In practice, it's a bit mixed - especially because most high-performance JITs are for heavily [[Dynamic language|dynamic languages]] and often involve [[Garbage collection]] too. JITs generally have less time to compile each function (and often thus only do sophisticated optimizations on [[Hot code]]).

Most modern JITs are paired with an [[Interpreter]] to handle cold code or handling cases where an assumption made by the JIT was violated (especially involving types). "Deoptimization".

In some cases there can be three or more JITs and interpreters in one language runtime, generally going from "handles all code, no startup cost, but slow" (an interpreter) to "very optimized, [[Profile-guided optimization|profile-guided]] compiler" (a JIT).

# Flashcards
In theory, a ==just-in-time== compiler is strictly more powerful than an ==ahead-of-time== compiler.

