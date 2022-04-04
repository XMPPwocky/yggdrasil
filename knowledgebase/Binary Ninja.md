My preferred tool for binary [[Reverse engineering]] and human-in-the-loop [[Static analysis]].

Has a neat [[Rust (language)|Rust]] API I need to learn...

# BNIL
Each IL also has an associated [[Static single assignment|SSA]] version...
## LLIL
### "[[Lifting (computer science)|Lifted]]" LLIL
This is what individual architecture plugins emit - the major difference between this and LLIL proper is that flag usage isn't resolved.
## MLIL
[[Local variable]]s have been detected & resolved, generally. [[Function call]]s, too.
## HLIL
The current [[Decompiler|decompilation]] result. Has an [[Abstract syntax tree]] form, which is indented and things...
### C output
It's "psuedo-C", for whatever that's worth. Haven't taken a look at it yet.