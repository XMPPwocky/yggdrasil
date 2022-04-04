e.g. instead of

```
// x must be non-empty!
fn foo(x: Vec<u32>) {
  assert!(!x.is_empty());
}
```
you could do

```
fn foo(first_x: u32, extra_x: Vec<u32>)
```

Also demonstrates partially how [[202201212220 Types are documentation]] and [[202201212221 Types are tests]] 

... but also shows how [[Ergonomics]] can start to suffer. In some cases, performance can be worse too...