Is there a better way to describe this than "ruling out [[Memory corruption]]"?

Seems like a prerequisite for [[Type safety]]... but doesn't seem to go the other way.

Can be partially achieved (use-after-frees can be prevented) with [[Garbage collection]]. But still need to protect against other things, GC alone isn't sufficient in general. [[Data race|Data races]]