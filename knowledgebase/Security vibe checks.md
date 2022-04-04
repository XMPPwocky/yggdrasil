Idea: code quality can be assessed fairly quickly by "security people" by just skimming it (not explicitly looking for bugs). Formalizing this is hard, though... Seems like [[Implicit knowledge]]

## Things with bad vibes

[[202201212203 Bluetooth is scary]]
[[202201212223 PGP is scary]]

## Things that indicate bad vibes
- Up-front validation of complex data structures, and then code that relies on stuff being valid - violates [[Parse, don't validate]], and when those data structures are mutable invites [[TOCTOU|TOCTOUs]] 
- Failing simple [[Fuzzing]] - especially dumb fuzzing. (Is this an indicator of code quality, or is it just that it hasn't been fuzzed before?)
- Especially in [[Cryptography]], systems that have a lot of [[Attacker wiggle room]].
- Strange behavior on weird inputs... define "strange"?
- Unexpected Turing-completeness ... see [[Weird machine]]
- Direct use of cryptographic primitives (block ciphers, etc.). Still counts as [[Rolling your own crypto]] if you use AES!
- [[In-band signalling]] in general - crossing control and data flows, especially embedding control information in data... however, naive attempts to not do this can end up bypassed with [[Weird machine]]. E.g. see how non-executable stack fails utterly to [[Return-oriented programming|ROP]] when used alone.
- Lack of an "obviously correct" approach to locking - invites [[Race condition|Race conditions]]
- "You're parsing WHAT (in the kernel / as root)?!?!!"
- Escaping in general - arguably related to [[In-band signalling]]
- Use of APIs that are known [[Footgun|footguns]]
- 