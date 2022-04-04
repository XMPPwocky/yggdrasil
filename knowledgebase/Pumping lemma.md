# [[Regular language]]s
States that for any [[Regular language]] $L$, there's some minimum length $p$ such that all strings in $L$ of length at least $p$ can be "pumped" (thus the name)- splitting a string $xyz$ into three parts $x, y, z$  such that $xz, xyz, xyyz, xyyyz$ are all also in $L$.

Among other things, means anything "balanced", e.g. balanced parentheses, can't be a regular language (and thus can't be parsed with [[Regular expression]]s)