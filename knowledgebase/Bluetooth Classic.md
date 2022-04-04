A.K.A. BR/EDR

# Controller-host split
HCI is a standardized protocol

Often a fast [[UART]] is used to transfer HCI messages on embedded systems; on anything more complex [[Universal Serial Bus|USB]] is popular. M.2 combo [[WiFi]]/Bluetooth cards often use [[PCIe]] for the WiFi and USB for the Bluetooth.

Important to understand - [[202201212219 Systems break at their boundaries]].

## RF layer

2.4GHz ISM band

Modulation: [[Frequency-shift keying#^2ef893|GFSK]]

### Frequency hopping

^1f088c

Bluetooth Classic does [[Frequency hopping]]
625us / hop

Sequence depends on a "clock" value and several other inputs

# Link Manager

# Flashcards
#flashcards 

Bluetooth Classic is also called Bluetooth ==BR/EDR==.
<!--SR:!2022-03-07,28,270-->

Bluetooth Classic hops (up to) ==1600== times a second.
<!--SR:!2022-03-17,35,270-->

Bluetooth Classic uses ==GFSK== modulation for its ==BR== mode, and ==DQPSK== modulation for its ==EDR== mode.
<!--SR:!2022-04-04,48,270!2022-05-19,77,270!2022-03-04,26,250!2022-04-05,49,270-->

Bluetooth Classic is used on the ==2.4GHz ISM== band.
<!--SR:!2022-03-16,34,270-->

Can multiple peripherals in a [[Piconet (Bluetooth)|Bluetooth piconet]] communicate directly without going through the Central device?::No.
<!--SR:!2022-04-23,61,270-->

Bluetooth Classic devices are "discoverable" if they respond to "==inquiries==".
<!--SR:!2022-03-04,26,250-->

In Bluetooth Classic, ==inquiries== always use the fixed LAP ==0x9e8b33==.
<!--SR:!2022-03-11,33,270!2022-04-03,47,270-->

In Bluetooth Classic, if a device is not discoverable, can it be paged?::Yes.
<!--SR:!2022-04-08,46,250-->

In Bluetooth Classic, a ==Central== device's packets always begin in ==even== slots.
<!--SR:!2022-03-20,33,230!2022-03-14,30,250-->

In Bluetooth Classic, a ==Peripheral== device's packets always begin in ==odd== slots.
<!--SR:!2022-04-16,49,250!2022-05-25,63,210-->

In Bluetooth Classic, a ==piconet== contains exactly one ==Central== device and up to ==seven== ==Peripheral== devices.
<!--SR:!2022-03-23,36,248!2022-04-01,45,268!2022-03-31,38,228!2022-04-22,64,288-->

Two or more Bluetooth Classic [[Piconet (Bluetooth)|piconets]] can be connected to form a ==[[Scatternet (Bluetooth)|scatternet]]==
<!--SR:!2022-04-06,50,268-->

True or false: In Bluetooth Classic, all packets are point-to-point.::False, broadcast modes still do exist.
<!--SR:!2022-03-26,37,248-->

In Bluetooth Classic, the piconet clock ticks ==two== times per slot.
<!--SR:!2022-03-14,30,248-->