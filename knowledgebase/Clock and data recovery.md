Can be done using a [[Phase-locked loop]], with a phase detector designed to understand that the data may not transition every clock cycle.

A key part of modern high-speed interfaces - [[Parallel bus|parallel buses]] have inherent limitations from clock skew, and naturally, eliminating the need for a separate clock line essentially obviates the issue of [[Clock skew (electronics)]] entirely.

[[8b10b]] or similar coding is important to ensure enough transitions.

Arguably, a [[UART]] is also similar... but, obviously, at far slower speeds. The lack of a line code sets a much lower limit on speeds...