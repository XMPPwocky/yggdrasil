A [[Kernel]] which intentionally provides as little functionality as possible. In particular, [[Device driver]]s are generally "just" processes/tasks.

Generally the kernel still provides [[Memory management]] stuff and [[Interprocess communication]] primitives.

Can have security / reliability benefits - in particular, because (in accordance with the [[Principle of least privilege]]) the amount of kernel code is minimized.

Particularly neat combined with an [[IOMMU]] which lets you grant hardware access to userland processes without letting them trivially [[Privilege escalation|escalate privileges]].

Has performance issues, though, especially with more naive/simple/"pure" implementations

[[Mach (kernel)]] as used in [[OS X (Operating system)|OS X]] is the only "real" microkernel used on desktops today AFAIK. ([[Linux]] is [[Monolithic kernel|monolithic]] or hybrid depending on whom you ask, the [[Windows kernel]] is allegedly "[[Hybrid kernel|hybrid]]" but [[Device driver]]s still (mostly) run in ring0 so...)