Most modern [[Kernel]]s have some mechanism to keep userspace from controlling the [[Zero page]]. 

This is important for security - [[202202072033 Kernelspace null dereferences]] had been quite nasty and created loads of [[Privilege escalation]] issues.

But this seems largely [[Exploit mitigation|mitigated]] in modern systems by the simple expedient of preventing mapping anything at the zero page, e.g. via [[202202072035 mmap_min_addr]]

