[[Signature (cryptography)|Digital signatures]] ultimately are over simple bit/byte strings. The interpretation of that is what's critical... a signature made with a given private key for one context can be *reinterpreted* in other contexts.

# Examples
[[Steam (service)]] signs *parental control configuration* with a key that seems to be also used for some other stuff... and you can just send parental control configs to the backend and Steam will sign them (though I think there's some [[Protocol Buffers|protobuf]] validation at least?).