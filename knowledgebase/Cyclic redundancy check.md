A sort of [[Checksum]] (not really a sum, though...)

Based on [[Polynomial division]].. though I don't quite understand how...

Can be implemented as a [[Linear-feedback shift register]] (usually in hardware), or there's some sort of lookup table 
Not [[Cryptography|cryptographically]] secure- [[@AlgorithmDesignWhy|CRCs are linear]] (technically, usually [[Affine transformation|affine]]) and so you can play games with [[XOR]], etc.
