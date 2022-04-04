Most [[Cryptography|cryptographic]] primitives can construct most others (though often poorly).

Given a secure [[Hash function]], can make a [[Block cipher]] (right)?

Given a secure [[Block cipher]], you can make a [[Stream cipher]] (just [[CTR (block cipher mode)]]), and thus trivially a [[Random number generator]].

Given a secure [[Hash function]], you can also do [[Signature (cryptography)|digital signatures]], at least via [[Merkle signature]]s.

#finishme