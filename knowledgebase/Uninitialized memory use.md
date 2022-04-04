Often presents as an [[Information leak]], but can have other impacts too (e.g. when a pointer is uninitialized)

# Types
## Array/buffer
[[Heartbleed (bug)]] was this in a TLS "heartbeat" extension, disclosing server memory 
## [[Struct]] [[Padding bytes]]
Especially a concern for [[Kernel]] code passing data to userland- can't just copy_from_user it!

## Uninitialized variables
When some variable is used just without being initialized.