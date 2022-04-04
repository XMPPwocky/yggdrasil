When one parser or whatever is used to validate something, and then a second parser actually uses the thing.

Any differences in parsing or interpretation between the two parsers can then often bypass the validation!

[[TOCTOU]] and [[Double fetch]] are this but *across time*, instead of *across [[Parser|parser]] implementations*.

[[Differential fuzzing]] is a very useful tool when testing for these (e.g. as part of [[Vulnerability research]])

[[Canonicalization]] is deeply related...