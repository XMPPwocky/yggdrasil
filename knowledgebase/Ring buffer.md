You get some linear chunk of memory. You have a "head" and a "tail" pointer. You write at one, read from the other, advancing the pointers respectively. You wrap around the "ring" once you get to the end.

In my experience, implementing these is basically begging for endless [[Off-by-one error]]s