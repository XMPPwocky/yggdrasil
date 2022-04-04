## Demodulation
Given a [[Quadrature signal|quadrature signal]], demodulation can be done fairly elegantly with a quadrature decoder - multiply a signal by its complex conjugate with a unit delay, then take the phase of it. This produces the phase increment from the previous sample... i.e. the instantaneous frequency.

Can also be demodulated with a [[Phase-locked loop]]. (Why this instead of the simpler quadrature demodulation? Noise / frequency offset tolerance?)