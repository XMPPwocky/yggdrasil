[[Postel's law]] - "be conservative in what you do, be liberal in what you accept from others"- is an ... interesting principle.

Sounds nice, but it has a big problem - a [[Higher-order effect]]. The behavior it encourages in *other implementations* (almost in a [[Game theory|game-theoretic]] sense) is to not care too much about correctness / conformance to specifications or standards... because they can do all sorts of garbage and it still [[202201260939 Worse if it seems to work|seems to work]].

# Examples
## [[HTML]]
Browsers are notoriously "flexible" in their interpretations of HTML. Because of this, a huge number of websites use HTML that's not valid according to the spec.

And this is also self-reinforcing, a [[Positive feedback]] loop- any browser which refuses to parse invalid HTML will fail on many websites, an unacceptable outcome. So browser parsers stay "flexible"... so websites keep not caring much about invalid HTML...