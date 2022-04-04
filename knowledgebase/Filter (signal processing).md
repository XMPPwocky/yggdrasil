A filter is a [[Frequency domain]] effect which modifies (usually) the magnitude, and often as an undesirable side-effect the [[Phase]], of a signal.

# Types
## Single-pole filter
Can be as simple as a recursive moving average, e.g.
```
let alpha = 0.9;

let mut tmp = 0.0;
for sample in input_samples {
  tmp = (sample * alpha) + (tmp * (1.0 - alpha));
  yield tmp;
}
```
Also "RC filters" in electronics end up being this.

Time-domain step response is an exponential curve.