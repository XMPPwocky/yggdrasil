Used to implement [[Measured boot]] on PC platforms.

Can do [[Remote attestation]] (but only to PCR values, AFAIK?)

Sometimes claimed to be useful for [[Digital rights management|DRM]]... but generally seems actually like a poor fit for this. Why? Largely b/c discrete TPMs are physically separate from the CPU - hanging off a relatively slow (and thus easily tappable / [[Machine-in-the-middle|MITMable]]) bus, [[Serial Peripheral Interface|SPI]] or [[Low pin count bus|LPC]].

For the same reason, attempts to use TPMs and [[Measured boot]] without a PIN/password for [[Disk encryption]] (i.e. the [[202201212212 Frog cookie box problem]]), as is the default (and only option available for Home SKUs!) in [[BitLocker]], inherently are very weak against attackers with physical access... i.e. the same attackers who you'd want to stop 

# Flashcards #flashcards

A TPM integrated into platform firmware (e.g. AMD PSP, Intel CSME) is called ==an fTPM==.
<!--SR:!2022-03-30,48,290-->

[[Trusted Platform Module|TPMs]] are typically connected to a system by either ==a SPI interface== or ==the LPC bus==.
<!--SR:!2022-05-11,79,290!2022-05-14,77,270-->
