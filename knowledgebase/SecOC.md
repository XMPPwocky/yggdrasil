Roughly, a method for putting an [[HMAC]] on a [[CAN bus|CAN frame]].

Because CAN frames are so short, SecOC also describes a way to separate the MAC and the actual authenticated data

It's generic over the actual algorithms used... sigh... in theory you can do asymmetric crypto too, haven't seen any implementations

# Freshness
SecOC uses a "freshness counter" scheme.. well, it can, it's [[Attacker wiggle room|optional]]