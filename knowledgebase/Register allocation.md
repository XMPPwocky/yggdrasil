Given a set of local variables/intermediates, determining which ones go into [[Register (CPU)|registers]] and which must be spilled onto the [[Call stack|stack]].

For example, [[LLVM]] IR basically assumes an *infinite* number of registers, and then codegen must determine what actually ends up in real CPU registers. Not sure how other compilers do it.

There is/was a "register" keyword in [[C (programming language)|C]], but as I understand it, basically all modern compilers ignore this or consider it as a weak hint at best. (Maybe weird dodgy embedded compilers still use it... though I'd hardly consider those modern.)