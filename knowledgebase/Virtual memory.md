A fundamental security feature for essentially all modern systems... true isolation between untrusted processes is *almost* not possible without it (though [[WebAssembly]], [[eBPF]], and to some extent [[JavaCard]]s make an attempt by verifying memory accesses ahead of time)

Distinct from [[Paging]], but generally (always?) required to implement it.