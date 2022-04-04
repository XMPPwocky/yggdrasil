---
sr-due: 2022-02-27
sr-interval: 20
sr-ease: 250
---

Rust needs [[Generic associated types (Rust)]] before you can write

```rust
trait Iterable {
  type Item;
  type Iterator: Iterator<Item=Item>;

  fn iter<'a>(&'a self) -> Self::Iterator<'a>;
}
  ```
The issue is with the [[Lifetime (Rust)|lifetime]]...

IntoIterator works around this by being implemented on "&'a T".

#review