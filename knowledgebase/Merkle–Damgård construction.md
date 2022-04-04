Constructing a [[Hash function]] from a "compression function".

Proven to be collision-resistant if the compression function is... but has some subtle issues, particularly [[Length extension attack]]s. 

# Flashcards
#flashcards 
A drawback of the [[Merkle–Damgård construction]] from a security perspective is that it's vulnerable to ==[[Length extension attack|Length extension]]== attacks.
<!--SR:!2022-07-04,101,270-->

The "core" of a hash function based on the [[Merkle–Damgård construction]] is a ==compression function==.
<!--SR:!2022-03-04,25,250-->