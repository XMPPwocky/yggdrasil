# About
Tiers:
- Bronze: Goal is < 150USD for *everything except consumables* while still being useful.
- Silver: < $500.
- Gold: < $2500 (for reference, roughly where my home "lab" is)
- Platinum: Spare no expense, but also don't waste on completely unnecessary things. If you're dropping this much cash you shouldn't be listening to me.
---
The basic toolkit

# [[Soldering]]
## Consumables
- Solder (duh).
	- I recommend [[Soldering#Lead-free|lead-free]] if working at home. [[Bioaccumulation|Bioaccumulative]] chronic toxins are something I do not want in the place where I live and eat, and lead is undeniably that. It may not be as forgiving, but it's worth it, at least to me.
	- #fixme: recommend a decent lead-free wire solder. mention importance of thin gauge
	- If [[Soldering#Leaded|leaded]], go 60/40 or [[Eutectic mixture|eutectic]].
- Wire
	- Fundamentally, there are 3 things you will want wire to do for you:
		1. Flex, [[Strain relief|absorb strain]], be long. You'll want stranded, relatively thick (~22[[American Wire Gauge|AWG]] here.) Consider silicone-jacketed wire for extra flexibility.
		2. Be fairly strong, but easy to solder to, and fit in breadboards and things. You'll want solid, relatively thick but not too thick (~22-26AWG).
		3. Be very thin as a [[Bodgewire]]. 30AWG or higher (thinner) solid-core "wire-wrap wire"
- [[Flux (soldering)]]
	- I recommend water-soluble flux over no-clean in general
	- #fixme talk about tackiness here
	- Pen or syringe. (If syringe, make sure you have all the parts needed to actually dispense it- they might not be included...)
- [[Desoldering braid]]. Get the stuff with flux already on it. Do not cheap out here. Bad braid is horrendous.
- Q-Tips or ideally lintless swabs.
- Isopropyl alcohol, ideally anhydrous but the drugstore stuff will work OK (but not dry instantly)
	- Careful, this stuff is quite flammable (and is hard to see burning...)
## Equipment
### Bronze tier - $25+~$10
- You'll need a [[Soldering#Soldering iron]]. I strongly recommend the Pinecil - it's $25, works extremely well. https://www.pine64.org/pinecil/
	- It's [[RISC-V (Architecture)]] powered! Sure, why not. 
- You'll want tweezers. Just get some generic metal tweezers set. $10 or so. 
### Silver tier - add $85
- Some sort of magnifier gets you a long way. A cheap jeweler's loupe will help a lot when checking [[Solder joint]]! - ~$15
- If you got the Pinecil, add the silicone cord (trust me, it's worth the $4) and the fine tip set. - ~$30
- Some sort of workholding / helping hands.
	- DO NOT GET the ones that are two alligator clips and a magnifying glass. These are horrible. They will fall over. Do not be tempted. [[accursed helping hands.jpg|AVOID THESE.]] 
	- https://www.sparkfun.com/products/11784 is my current pick, ~$35
- Solvent bottle dispenser pump thing - $15 
### Gold tier - add $100
- May want to consider a better iron here... #fixme 
- Fume extraction setup here or silver? #fixme
- ENGINEER SS-02 Solder Sucker - $30
	- When it helps, it helps loads. I recommend this particular solder sucker over others because its "tip" is a (replaceable) piece of high-temperature silicone - that means it's flexible enough to form a seal around the iron and get much more useful suction.
- Hot air "station" - $70
	- You're looking for something that says "858" or "858D" somewhere.
	- Do not leave these plugged in unattended. You are not purchasing a quality piece of equipment. This will become a fire eventually, it's basically guaranteed.
- #fixme Panavise or other workholding recommendations here? Stikvise?
- #fixme rework stuff (pads etc)
### Platinum tier
- Consider Metcal / [[Curie point]] iron?
- BGA rework, etc?
- A proper stereoscopic microscope will do absolute wonders for your soldering. Unfortunately, it's hard to fit one in at any tier below this. They're not cheap.

## Test and Measurement
### Bronze tier ($35)
- Multimeter, cheap garbage ($15)
	- Do not trust the insulation on, or generally safety of, these. I'd even be a bit worried about connecting them to 120V mains.
- Possibly a cheap bad logic analyzer... at least just for UARTs... < $20
### Silver tier
- Good logic analyzer OR oscilloscope... hard to pick at this price point, cheap MSOs generally won't do you. (Saleae Logic analog channels may give a good option?) #fixme
### Gold tier
- [[Logic analyzer]] and [[Oscilloscope]].

## Power
### Bronze tier ($15)
- USB power supplies get you farther than you'd think...
- Consider getting a 20V power brick (laptop charger) from somewhere, and then add a cheap DC/DC module ($15) for a wide range of outputs
### Silver tier (add $75).
- Consider a cheap adjustable power supply (~$75).
- #fixme: think about handling battery devices? probably not
### Gold tier
- Proper (but low-end) three-channel lab power supply. Rigol DP832. ~$500.

## Interfacing
The big thing money buys you here is flexibility - Tigard covers most of the common buses quite thoroughly, but spending more (especially getting the Glasgow/FPGA stuff) lets you handle even things nobody else has ever seen before, or do fancy attacks (e.g. [[Serial Peripheral Interface|SPI]] [[Machine-in-the-middle|MitM]])
### Bronze tier ($45)
- Tigard
### Silver tier
### Gold tier
- Glasgow (when shipping)
- Consider J-Link?

## Tools
### Silver tier - $35
- iFixit Mako screwdriver kit - $35
- X-Acto knife
- Wire strippers/cutters
### Gold tier - add $120
- iFixit pro toolkit (replace screwdriver kit) - add $35 (-35 + 70)
- Wowstick mini electric screwdriver ($60) - takes iFixit bits
- Mini "pencil" engraver - $25
	- For removing soldermask, etc.
- Flush cutters

## Software
Your biggest expense here will be your [[Reverse engineering]] tool, unless you're buying something really specialized.
### Bronze tier
You'll have to acquire this somehow. Perhaps it will fall off the back of a truck.

You could also try to learn [[Ghidra (Reverse engineering tool)]], but then you have to learn Ghidra.
### Gold tier
- If it'd apply to you, get a personal [[Binary Ninja]] license.
### Platinum tier
- Buy a commercial [[Binary Ninja]] license.