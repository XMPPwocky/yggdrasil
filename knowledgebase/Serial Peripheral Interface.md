A very common synchronous bus/interface...

Four essential signals-
- COPI: Controller out, peripheral in. A.K.A. MOSI (master out, slave in)
- CIPO: Controller in, peripheral out
- CLK: The clock.
- CS: Chip select. Almost always active low (why?)... Two main purposes:
	- first, the assertion of chip select starts/ends a transaction (providing a sort of [[Framing]])
	- second, a controller connected to multiple peripherals can give all of them a different CS (but connect COPI/CIPO/CLK to them all). Because SPI devices are supposed to [[Tri-state]] when CS is not asserted, this works...

# QSPI
"Quad SPI". Basically merges COPI/CIPO (introducing potential [[Bus contention]] issues in the process...) and adds two other signals. on [[SPI flash]] this is convenient because there are two pins that are rather useless. 

In some cases, regular SPI and QSPI are mixed - e.g. a transaction will start with an "opcode" over regular SPI, and then some opcodes will use QSPI for the rest of their data.

# Flashcards
#flashcards 

The four essential signals for normal SPI
?
COPI, CIPO, CLK, CS
<!--SR:!2022-03-27,34,230-->

In SPI, the ==CS== signal is generally active-==low==.
<!--SR:!2022-04-04,48,270!2022-03-11,31,270-->

In SPI, COPI stands for...::Controller out, peripheral in.
<!--SR:!2022-06-10,104,310-->

In SPI, CIPO stands for...::Controller in, peripheral out.
<!--SR:!2022-03-26,45,290-->