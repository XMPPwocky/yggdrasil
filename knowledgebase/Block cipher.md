```
const BLOCK_SIZE: usize;

fn encrypt(plaintext: [u8; BLOCK_SIZE], key: Key) -> [u8; BLOCK_SIZE];
fn decrypt(ciphertext: [u8; BLOCK_SIZE], key: Key) -> [u8; BLOCK_SIZE];

forall msg: [u8; BLOCK_SIZE], key: Key {
  decrypt(encrypt(msg, key), key) == msg
}

```
# Modes of operation
# Ciphertext block chaining (CBC)
# Counter (CTR)
# Ciphertext feedback (CFB)
# Galois-Counter mode (GCM)
