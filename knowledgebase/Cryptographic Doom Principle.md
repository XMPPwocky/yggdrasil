"if you have to perform _any_ [[Cryptography|cryptographic]] operation before verifying the [MAC](http://en.wikipedia.org/wiki/Message_authentication_code) on a message you’ve received, it will _somehow_ inevitably lead to doom."

Interesting in asymmetric contexts- for decryption you need to do private key operations on untrusted ciphertext! (Does Diffie-Hellman do better here?)

Anything where you have no real MAC at all obviously fails trivially!

M. Marlinspike, “The Cryptographic Doom Principle.” [https://moxie.org/2011/12/13/the-cryptographic-doom-principle.html](https://moxie.org/2011/12/13/the-cryptographic-doom-principle.html) (accessed Dec. 25, 2021).]