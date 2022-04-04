A [[Shift register]] with [[Feedback]] derived from one or more of its own bits, via a linear function (meaning what?)

# Uses
## As a [[Random number generator|PRNG]]
Some [[Soundchip]]s use LFSRs to generate noise.

[[Bluetooth Classic]] also uses a LFSR (seeded w/ clock value) for data whitening

## Other
[[Cyclic redundancy check|CRCs]] can be computed using LFSRs.

[[Bluetooth Classic]]'s original encryption uses the E0 cipher, which switches between a number of LFSRs. Normally a single LFSR is trivially invertible and so not useful for [[Cryptography|cryptographic]] purposes, but switching between several of them seems to at least stand a chance... (Arguably, since it's a [[Stream cipher]], this is also a PRNG, but it's not used directly, so...)

# Flashcards #flashcards 

Can a linear-feedback shift register be a cryptographically secure RNG?::No, not on its own.
<!--SR:!2022-03-22,39,270-->