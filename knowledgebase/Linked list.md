The basic logic of a linked list implementation is trivial... but the [[Edge case]]s (especially at the start/end of a list, and when handling an empty list) can be rather infuriating.

# Types
## Singly-linked list
## Doubly-linked list

# Intrusive v.s. non-intrusive
Intrusive linked lists can often improve [[Cache locality]] and remove a layer of [[Indirection]], but often require more finagling to implement (can't just have a `void *`)

# Performance characteristics

Originally thought the main issue was [[Cache locality]] but apparently the long [[Data dependency]] chains are also (or more?) significant.

# Flashcards

The [[Asymptotic complexity]] of insertion for a linked list::O(1)
<!--SR:!2022-03-14,35,270-->

#flashcards