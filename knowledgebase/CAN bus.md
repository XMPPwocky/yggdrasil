# Security
The short frame length of CAN makes encryption and authentication much harder - there's not much room for a MAC, let alone an asymmetric [[Signature (cryptography)]]

# Flashcards
A CAN base frame has an ==11== bit ID.
<!--SR:!2022-03-09,25,230-->

A CAN extended frame has a ==29== bit ID.
<!--SR:!2022-03-10,11,228-->

A normal CAN frame can have up to ==8== bytes of data.
<!--SR:!2022-03-06,25,248-->

In CAN, a ==0== data bit encodes the ==dominant== state.
<!--SR:!2022-04-12,49,248!2022-04-28,66,268-->

In CAN, a ==1== data bit encodes the ==recessive== state.
<!--SR:!2022-04-03,47,268!2022-04-04,42,248-->

In CAN, the node with the ==lowest== ID wins arbitration.
<!--SR:!2022-03-09,26,228-->

#flashcards