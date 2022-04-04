Needs:
- Configuration is easy to get right, hard to get wrong.
- Default strong isolation between devices
	- But allow passthrough of arbitrary discovery protocols... how?
		- [[Multicast DNS|mDNS]]
		- "DIAL"?
		- [[Universal Plug-n-Play|UPNP]], etc.
- ACLs should be invertible + declarative
- Target speed: ~1 gigabit
- Resilient against malformed traffic evading traditional [[Firewall]] rules
	- Remove [[Attacker wiggle room]] where possible-
		- first, [[Parse, don't validate|parse]] packets into a [[Canonicalization|canonical]] representation
		- then serialize at egress
	- But need to not break weird things...
- Converge [[OSI model|layers]] 3 and 4.
	- No "routing"! What's there to route in a home network? It's either client-to-client or destined for WAN, or it's an incoming packet and needs [[Network address translation|SNAT]], not routing.
	- But also no [[Ethernet switch|switching]]/[[Ethernet bridge|bridging]].
	- This is surprisingly easy for many things... but as mentioned above, discovery protocols like mDNS present an issue.
		- And other weird stuff... [[NAT hole punching]] protocols might have issues too? Anything "clever" is going to be annoying. Want to not have special cases to allow them.
	- Almost analogous to [[Multiprotocol label switching|MPLS]] 
	- Support [[WiFi]] + [[Ethernet]].
		- WiFi is hard, may need a consumer router... can it operate in such a mode as a truly "pure" [[WiFi access point]]? also obvious security concerns there
		- Ideally [[WireGuard]] or something to secure wired Ethernet traffic (optimistically)
# Implementation
## CPU, PoC
## CPU, fast
## [[FPGA]]/Mellanox