Having multiple [[Redundancy|redundant]] defenses, such that in case one fails, other things still provide security.

[[Redundancy is not security]] in and of itself- to provide security, you need *heterogenous* defenses. They must also be deployed "in series, not parallel", so that the [[202201212222 Weakest link breaks the chain|weakest link doesn't break the chain]]

Can at least raise [[Attacker cost]]...

[[Sandboxing]] is a common example; an attacker who compromises some sandboxed software still must [[Sandbox escape|escape that sandbox]], generally, assuming the sandbox itself is [[Principle of least privilege|not too privileged]]...