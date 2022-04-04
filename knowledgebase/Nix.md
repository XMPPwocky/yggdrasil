# As a build system
[[Derivation (Nix)]]

# As a language
# Nix store

## For fuzzing

Useful to build [[Fuzzing]] harnesses- often have the problem of 1. how do you override compiler version generically, 2. how do you build some random library, 3. if you have multiple harnesses for e.g. instrumented, ASAN, debug... how do you make sure each harness uses the right library version

# Flashcards
Are Nix expressions evaluated eagerly or lazily?::Lazily
<!--SR:!2022-05-21,88,310-->
#flashcards