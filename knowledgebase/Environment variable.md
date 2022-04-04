# On [[Linux]]
Environment variables get passed to each newly created process by the [[Linux kernel]] in a way that the [[C runtime]] picks up on and saves; ``getenv`` and similar functions really just look things up in that copy.
Notably, the "real" environment variables aren't modified, just the copy the C runtime keeps!
## Interaction with [[Shell (computing)|shell]] variables
