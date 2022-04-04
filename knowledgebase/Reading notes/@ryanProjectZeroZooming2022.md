---
title: Project Zero: Zooming in on Zero-click Exploits
authors: Ryan
year: 2022
DOI: 
---

URL: https://googleprojectzero.blogspot.com/2022/01/zooming-in-on-zero-click-exploits.html

mentions some [[Security through obscurity]] sorta (though unlikely intentional) in that cost is $1500 in licensing fees...

then did [[Coverage-guided fuzzing]] on [[Real-time Transport Protocol|RTP]] handlers, no results

Found silly [[Buffer overflow]] where a length is present in two places - one used for determining allocation size, second length is the length actually read into that buffer. [CVE-2021-34423](https://bugs.chromium.org/p/project-zero/issues/detail?id=2223)

Need [[Information leak]] to exploit, so... 

Looked for [[Type confusion]] issues after seeing a union with pointer and integer variants. Sort of obvious, but I might not have thought of that...

Not much success there, but did find a more subtle case - there are both byte array and string variants, where string variants are null-terminated. Thus, infoleak via [[Uninitialized memory use]], [CVE-2021-34424](https://bugs.chromium.org/p/project-zero/issues/detail?id=2235&q=zoom%5C&can=1) 