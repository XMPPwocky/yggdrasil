When you have, conceptually, "a bunch of [[Struct]]s"...

```
struct Foo {
  x: u32,
  y: u16
}

let x: Vec<Foo> = ...
```
it can be advantageous to transform this into 

```
struct Foos {
  x: Vec<u32>,
  y: Vec<u16>
}
```

# Advantages
The big win here can be [[Cache locality]] - if users often want to iterate through "the `x` on every Foo" without necessarily looking at the `y`. You can also potentially reduce [[Padding bytes]] as a small bonus...
# Disadvantages
It's now possible for `x` and `y` to be *different lengths*... this could also result in some missed optimizations (bounds checks not getting [[Bounds check elision|elided]])
# Language specifics
## Rust
Has some subtle implications for [[borrowck|borrow rules]]
# See also
[[Data-oriented design]]