Describe [[Regular language]]s

# Syntax
## [[Kleene star]]
`a*` matches 0 or more repetitions of `a`; e.g. the empty string, `a`, `aa`, `aaaaaa`...
## [[Kleene plus]]
 `a+` matches 1 or more repetition of `a`, e.g. `a`, `aa`, `aaaa` but *not* the empty string
## Number of repetitions
`a{5}` matches 5 `a`s, `aaaaa`
`a{5,}` matches 5 or more `a`s- `aaaaa`, `aaaaaa`, `aaaaaaa`... Equivalent to `a{5}a*`
 `a{,5}` matches *up to* five `a`s- `a`, `aaa`, `aaaa` . #fixme: what about the empty string? and does this match `aaaaa`
 `a{3,5}` matches 3 to 5 `a`s.
## Parentheses
Group things together
## "or"
`a|b` matches `a` or `b`
