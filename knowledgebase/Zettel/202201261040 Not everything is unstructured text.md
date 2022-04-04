Another arrow in the "the [[Unix philosophy]] is overrated" quiver.

Possibly the biggest problem with the whole approach. In fact, *almost nothing* is unstructured text.

Text certainly isn't - you have [[Character encoding]]s to think about, for one thing. Then again, [[202201261049 Anything is simple if you ignore everybody else]]

Because there's no structure, without explicitly-defined "syntax"/grammar for a tool's output, everything is sort of [[In-band signalling|in-band]]. This is part of why [[202201261043 Whitespace in filenames breaks everything]]... you can't return "a list of filenames", you have to return "filenames separated by [[Newline|newlines]]" or if you're really forward-thinking "filenames separated by [[NUL byte]]s"...

Treating everything as text also invites programmers/users to use general-purpose string formatting/editing tools on them... which is often the *point*, and often works fine... but [[202201212218 String concatenation considered harmful|there are real security and correctness concerns]].

[[PowerShell]] has its... quirks, but it at least largely gets this right. [[Nushell (shell)]] seems to, too.