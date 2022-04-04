# Implementation
Typically (at least under Windows) the
# Security
Because they end up doing complicated analysis on (by definition) untrusted data...

[[Sandboxing]] would help, though it's still far from ubiquitous (and [[Sandbox escape|escapes]] are always possible...)

Using a [[Memory safety|memory-safe]] language would also help, though wouldn't solve *everything*, e.g. uncompressing an archive to a temporary directory might give you problems with [[Directory traversal]]