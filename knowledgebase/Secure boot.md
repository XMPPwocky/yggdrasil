Can be useful (e.g. on mobile devices)... but also perfect for [[Tivoization]]..

# Secure boot chain

Typically, secure boot is a chain - and [[202201212222 Weakest link breaks the chain]].

Roughly, this often looks something like this (with some stages merged into one on some devices)-

- A CPU is released from reset and executes a [[Boot ROM]]
- The boot ROM verifies and loads a "primary" [[Bootloader]] or "PBL"
- The PBL verifies and loads a secondary bootloader, or "SBL" - in embedded systems, often [[U-Boot (bootloader)]]
- The SBL verifies and loads the main OS [[Kernel]]
- The kernel verifies and mounts a root filesystem, then launches `init` or similar

In embedded systems, U-Boot is often a key part of that secure boot chain and must be configured correctly - a lot of small misconfigurations can allow an attacker to load unsigned code.