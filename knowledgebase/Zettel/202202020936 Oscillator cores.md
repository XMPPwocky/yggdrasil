For [[Voltage-controlled oscillator]]s mostly. Especially for [[Analog synthesizer]]s and particularly [[Modular synthesis]].

Basically all analog VCOs which have multiple output "shapes" (e.g. [[Square wave]] and [[Sawtooth wave]]) are actually one VCO + various [[Waveshaping|waveshaper]]s to create those shapes. For example, getting a square wave from a sawtooth VCO is as simple as feeding it through a [[Comparator|comparator]] (where the comparator's other input is, conveniently, the [[Pulse-width modulation|pulse width]]).

# Common shapes
## [[Sawtooth wave|Sawtooth]]/ramp core
A ramp which then resets.

Makes thinking about [[Waveshaping]] quite easy - though the actual circuit may be harder - because your input to the shaper is effectively just a straight [[Phase]] accumulator... i.e. given a circuit that computes $sin(x)$ you can feed it a sawtooth.

With only one ramp direction, o

## [[Triangle wave|Triangle]] core
Conceptually two ramps (ramp up/down).

Harder to design than a saw core. But allegedly can be superior in tuning linearity, [[@WhatSpecialTrianglea]] - also easier to get a good triangle output (unsurprisingly...) with implications for [[West-coast synthesis]] 

## [[Quadrature signal|Quadrature]] trapezoid
Really interesting one. *Two* trapezoids 90 degrees out of phase.

```
_   _   _   _   _
 \_/ \_/ \_/ \_/

 _   _   _   _   _
/ \_/ \_/ \_/ \_/

```
Why do this? Not sure. I think it may have something to do with allowing [[Through-zero frequency modulation]]?