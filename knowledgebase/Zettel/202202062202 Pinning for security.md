When things are negotiated dynamically, that's often bad for security - [[BadUSB]] style attacks, [[Downgrade attack]]s in [[Cryptography]]... and also just the inherent issue w/ [[Attacker wiggle room]]

 # Examples
 - [[Trust on first use|TOFU]] as in [[SSH (protocol)]]
 - [[HTTP Public Key Pinning]]
 - Pinning [[Cryptographic certificate]] in e.g. [[Smartphone]] apps which expect to connect only to a single trusted backend... this is sort of missing a key part, though - the TOFU element. And ultimately it just falls back to the normal web [[Public-key infrastructure]] anyways.