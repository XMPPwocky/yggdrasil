# Implementation (my understanding)
Runs in steamservice.exe (thus necessarily tied to [[Steam (service)|Steam]]). Runs as SYSTEM, but notably not in the [[Kernel|kernel]].

Dynamically downloads "modules".

# Ban waves
VAC notably doesn't ban users immediately - the idea is to make it harder to find out what triggered a ban.

This interacts poorly with free-to-play games like [[Team Fortress 2|TF2]] though - a cheater can just play 'til their account is banned, then make a new account. Even if their cheat is detected!

# VACNet
Not really (AFAIK) part of VAC at all - it's a [[Machine learning]] model that attempts to detect cheaters, first seen in [[Counter-Strike: Global Offensive|CSGO]] 
## Untrusted ban
Also seen in CS:GO; triggered by sending "impossible" things to the server (e.g. a usercmd with the roll angle nonzero). Sort of like [[SourceMod Anti-Cheat]]