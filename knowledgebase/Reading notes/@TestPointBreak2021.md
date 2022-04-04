k---
title: Test Point Break - Analysis of Huawei’s OTA Fix For BootROM Vulnerabilities
authors: 
year: 2021
---

https://labs.taszk.io/articles/post/huawei_kirin990_bootrom_patch/

Describes how Huawei "patched" a [[Boot ROM]] vulnerability with an [[Over-the-air update|OTA update]]!

Original vulnerability reachable over [[Universal Serial Bus|USB]], in EDL mode. [[202201242046 Recovery is weak]]

Authors initially thought they might have used the [[Flash Patch and Breakpoint Unit (ARM)]], which could map a small patch over ROM code.. but nope (and Huawei couldn't, they blow fuses which make it unusable in production devices)

Authors discovered patch makes USB download mode fail entirely.

Turns out they blow a "VREGBYPASS" [[eFuse]]... which seems to make the USB controller run off a different voltage rail, which is too low-voltage for it to work! Without USB download mode, there's no way to hit the vulnerable boot ROM code, so the issue is unexploitable.

Personally, I'd still feel... uneasy about this fix (what about overvoltaging, etc. that [[Power rail|power rail]])? But it's certainly a whole lot better than "you're screwed, sorry, buy a new device".

# Flashcards #flashcards 

Huawei mitigated a [[Boot ROM]] vulnerability in their ==[[Huawei Kirin (chipset)|Kirin chipsets]]== by ==blowing an [[eFuse]] which undervoltages USB controller while the boot ROM runs, rendering it inoperable==
<!--SR:!2022-03-16,32,250!2022-03-07,28,250-->