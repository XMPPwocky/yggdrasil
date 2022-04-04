Profiling generally refers to determining what parts of code are the slowest or most performance-critical; sometimes other metrics are gathered (e.g. resource usage, [[Caching|cache]] pressure...)

# Types
## Sampling profiler
Pauses the program periodically and sees what code is running then.

"what code is running" can be tricky (especially if you want instruction granularity) because of the deep [[Pipeline (computing)|pipelines]] and heavily [[Superscalar processor|superscalar]] nature of modern CPUs...

Ultimately a [[Monte Carlo]] method.

## Tracing profiler

# Flashcards
Is a sampling profiler [[Nondeterminism|deterministic]] (in general)?::No
<!--SR:!2022-03-29,42,250-->

#flashcards