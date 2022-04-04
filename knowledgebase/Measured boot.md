A system based on a chain (like in [[Secure boot]]) of bootloader stages, each of which *measures* the next stage into some append-only (or similar) log, almost always a [[Trusted Platform Module|TPM]].

Secrets can be *sealed* against a certain TPM PCR value. Most commonly this ends up being [[Disk encryption]] keys or something to derive them from...

Fragile, though - in theory [[BIOS]] updates, etc. should be able to be done without changing PCR values, but in practice it does occasionally happen. This requires some recovery mechanism (and [[202201242046 Recovery is weak]], or unpredictable unexpected data loss!