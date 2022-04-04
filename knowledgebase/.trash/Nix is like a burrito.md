# The Nix "build thingy"
Conceptually, one could imagine a Nix program which evaluates to a *Makefile* with targets like
```
/nix/store/some_big_path: /nix/store/some_input /nix/store/some_other_input
  some_builder.sh
```
and then you'd run [[Make (build system)]] to *actually build things*.

In reality, Nix just implements that functionality itself (note that this is *not* part of the Nix *language*). Make does end up often being used to build an individual [[Derivation (Nix)|derivation]] - i.e. invoked by some_builder.sh. In theory, you could have a [[Derivation (Nix)|derivation]] for each individual .o file in a program and then a derivation depending on all those that links them and produces the final binary- in practice this isn't done, because existing software already has a build system and it's much easier to just call that.

# Nix v.s. NixOS
[[NixOS]] is an operating system that *uses* [[Nix]] to, ultimately, generate a bunch of configuration (e.g. [[systemd]] units for things like services, config files for those services...)

Nix is entirely usable on its own (on any Linux distribution where you can create a "/nix" folder, and even on others with some hacks)
# Packaging binary software
## Handling auto-updates
Because the Nix store is read-only, if you have software that tries to auto-update itself by replacing its binaries, placing it in the Nix store won't work (at the least, auto-updates will break; some apps don't handle this gracefully and won't start at all if an update is available.)