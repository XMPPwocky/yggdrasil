[[Linux]] kernel API, a beautiful gift to exploit developers.

Made for [[Live migration]] of [[Virtual machine]]s AFAICT?

Effectively provides a way for userland to get way more information about [[Kernel]] memory access patterns - and, better yet, to *block kernel code as soon as it accesses certain addresses*

Aw, but seems like that party's over, at least for trivial approaches - userfaultfd now has a special flag to say "ignore kernel-mode accesses", and *not* setting that flag (i.e. attempting to catch kernel accesses) requires [[Capabilities]] 