Language for [[Systems programming]]

Notable for [[202201212211 Fearlessness from safety nets]], particularly [[Memory safety]] without [[Garbage collection]]

Also good defaults - [[202201212214 Leave the trash can open]]

Really good at building expressive abstractions over unsafe things (not just memory) - when abstractions need to be [[Leaky abstraction]], `unsafe` provides an escape hatch (but arguably too broad...)

Sometimes described as a "better [[C (programming language)]]", but it's really much closer to a "better [[C++]]".

# Implementation

Essentially the only usable implementation, rustc, is a [[Self-hosting compiler]] that uses [[LLVM]].

Historically, rustc was somewhat infamous among LLVM devs for emitting horrendous LLVM IR - relying on LLVM passes to emit sensible code. Things seem to be much better these days.

# Flashcards
#flashcards 

Does (safe) Rust prevent all [[Race condition]]s?::No, only [[Data race]]s.
<!--SR:!2022-03-06,27,250-->

Are crates with different Rust editions compatible?::Yes!
<!--SR:!2022-03-12,32,270-->

The 3 (current) Rust editions are...::Rust 2015, Rust 2018, Rust 2021
<!--SR:!2022-04-01,43,250-->