[[Return-oriented programming]] can be considered a special case of [[Jump-oriented programming]]. A `ret` instruction is, after all, generally either something like

`jmp lr` - which is clearly just an [[Indirect branch]]

or, on architectures without a [[Link register]], something like 

```
pop tmp
jmp tmp
```

which is also pretty much just an indirect branch.