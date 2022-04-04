# Types (Implementation)
## Internal
Typically running as a [[Dynamically-linked library]] [[DLL injection|injected]] into a game process. As such it can [[Hooking|hook]] internal functions easily and often do more
## External
Runs outside the game process (but generally as a userland process on the same machine, unless otherwise specified), using APIs like ReadProcessMemory/WriteProcessMemory on [[Windows (operating system)|Windows]] to... read and write the game process's memory. Because the game process usually continues running during this, external cheats have inherent [[Race condition]] issues when attempting to do things like follow pointers; usually it's not too big of a problem, though.

On Windows, those functions do require you to open a [[Handle (computing)|handle]] to the game process, which can be detected by [[Anticheat (video games)|anticheats]] (all handles can be enumerated, even outside the kernel). Kernel-mode anticheats can also prevent handles from being opened to a game process at all- this usually requires a kernel-mode cheat to work around.

## Kernel-mode
A kernel-mode cheat runs in the [[Kernel]]. This can help evade [[Anticheat (video games)]], though it's not sufficient alone- see [[202201212207 Constrain, then kill]]
## Hypervisor

## Network
A network cheat runs on a different machine from the one running the game.

[[Machine-in-the-middle]]

