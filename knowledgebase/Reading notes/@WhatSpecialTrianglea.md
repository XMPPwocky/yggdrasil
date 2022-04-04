---
title: What's so special about triangle core VCOs? - MOD WIGGLER
authors: 
year: 
DOI: 
---

[Open in Zotero](zotero://select/items/@WhatSpecialTrianglea)

Forum thread about [[202202020936 Oscillator cores]].

Often claims of superiority for [[Triangle wave|triangle]]-core [[Voltage-controlled oscillator|VCO]]s (over [[Sawtooth wave|saw]]-cores). Why?

Answer provided- saw cores need time to "reset", and this takes some nontrivial time (is this true? seems like it should be possible to do it very quickly...).

Forum user says the problem caused by that is that the "charging current" (presumably the voltage-controlled current charging a cap or whatever?) is often lost during that reset. So the oscillator has a non-ideal tuning curve - at high frequencies resets happen more often, losing more of the charging current, causing the pitch to go flat.

Not mentioned in that post, but also... seems like it'll cause interesting behavior w.r.t. subsequent [[Waveshaping]] to produce some things? E.g. with a naive circuit computing $sin(x)$ from a sawtooth to give a [[Sine wave]], as a sawtooth resets it'll *play a full cycle of a sine wave backwards*. I haven't actually *seen* this behavior, but it seems plausible?