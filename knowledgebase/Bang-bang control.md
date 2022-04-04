Controlling a process by driving it "to the limit"- your control input is either max or min. Binary. Often very easy to implement, but...

Is optimal for some common processes! #finishme which?

Generally the implication is that if your process is above the [[Setpoint]] you set your input to minimum, if below you set your input to max ([[Negative feedback]]). But can get more complicated (I think? fuzzy definition). For example, [[Hysteresis]] is common.

You can imagine complicating it more, though... in the limit, for example, you could implement a [[PID control|PID controller]] and then use its output for [[Pulse-width modulation]]. As is commonly done! This is clearly not the spirit of bang-bang, though.

# Examples
- Simple [[Thermostat]]s (almost always w/ [[Hysteresis]])