A trait used to implement custom [[Destructor]]s.

```rust
pub trait Drop {
    fn drop(&mut self);
}
```

# Flashcards
#flashcards 

In [[Rust (language)|Rust]], is an implementation of Drop guaranteed to be called at least once (in safe code)?::No.
<!--SR:!2022-03-10,17,230-->

In Rust, what is the type signature of the Drop trait's only method?
?
```rust
fn drop(&mut self);
```
<!--SR:!2022-03-18,25,250-->
