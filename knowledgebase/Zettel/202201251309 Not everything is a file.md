Contrary to the [[Unix philosophy]]...

[[Plan 9 (operating system)]] took the original "everything is a file" idea to the logical conclusion.

# What is a file, anyways?
As I see it, the idea of a "file" as used in "everything is a file" has at least 3 parts:
## The file API
Read, write, seek.

This is maybe the most obvious mismatch... even many files can't be written; many devices have no meaningful "seek", either. It's also fundamentally a stream-based API when many "devices" (e.g. a [[UDP (protocol)|UDP]] [[Socket (networking)|socket]]) work far more naturally in units of *datagrams*, or have additional data (e.g. source address) associated with incoming or outgoing data.

The common workaround to this seems to be the inevitable addition of either a whole bunch of new [[Syscall]]s, e.g. send/recv for [[Socket (networking)|sockets]], or just shoving everything interesting through [[IOCTL]]s (which is ultimately not too different from just adding more syscalls...)

## The single, hierarchical, mount-based namespace
The filesystem; mount points, etc.

This is also sort of interesting, and can be really useful... but has significant security problems - especially in the context of e.g. [[Directory traversal]] or [[Local file inclusion]]. [[UNC path (Windows)|UNC paths]] on Windows demonstrate this well- they're very useful for exploiting all sorts of things.

And it violates [[202201251321 Aliasing XOR mutability]]! Things can change out from under you, posing endless [[Race condition]]s and [[TOCTOU]] issues, some of which can be incredibly difficult to fix. Lots of opportunities to wind up with [[Privilege escalation]] problems.

## The [[File descriptor]] API
Ultimately this actually doesn't seem to have much to do with "files" at all- it's just a general [[Handle (computing)|handle]] mechanism.

# Alternatives
The [[Windows kernel]] actually has a much more interesting approach here- "Everything is an object". Your major interactions with an object go through a [[Handle (computing)|handle]]; some things you can read/write to, some things you can't.