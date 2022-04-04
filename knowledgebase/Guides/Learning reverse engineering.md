When learning [[Reverse engineering]] (particularly, but not just, on binaries)...

Know some [[Assembly language]], and in particular make sure you know the [[Calling convention]]s for your platform.

When starting out, do it on binaries you can actually run in a [[Debugger]] and see what's actually happening at runtime. And I say that as somebody who relies almost entirely on [[Static analysis]] most of the time.

Learn common patterns for things like "looping over an array", "iterating over a [[Linked list]]", etc. this is very important.

The process, at least for me and most of the folks i've talked to, is one of iterative expansion - start with what you know, use that to figure out other stuff. now you know more things, repeat.

So:

## Get the low-hanging fruit!
Go for easy wins as much as you can. Strings! I love strings (mind you I don't do [[Malware]] much and don't see much [[Obfuscation]]). See a `printf("access_check: ACL rule %d check denies action %s for user %s", foo, bar, baz)`? Rename that function to access_check, rename foo to "acl_rule", rename bar to "acl_action", rename baz to "user". Now follow those back as far as you can, with everything that calls access_check. Something calls `access_check(woof, bark, meow)`? woof is acl_rule, bark is acl_action, meow is user. if you use [[Binary Ninja]] right it'll do a lot of this for you, not sure about other tools these days.

Look for logging functions especially - not only are they helpful, often they're called by macros that pass the function name as an argument - you can set the name of hundreds of functions with a script that way.

Also, symbols obviously help- not just exported/local symbols either. Use imports! if something's passed as the first argument to `open`, that's a filename.

## Think about types!
[[Struct]]s structs structs structs. again, binary ninja does really well here because it propagates type information. but for most binaries I encounter, figuring out a handful of structs and looking at how they're passed between functions pretty much makes it clear exactly what's going on.

## Keep making forward progress!
DON'T GET STUCK. if you can't figure out roughly what a function does (enough to give it a name) within a few minutes or so of looking at it, bookmark the function and move on- reverse other stuff. Very good chance that'll make it obvious what the function does. If not - remember why you are reversing this binary. If you're doing it to hunt for vulns... does the function handle user input or do security-critical things? If not, MOVE ON. (Maybe set a bookmark/tag to remind yourself to come back later.)

Most real systems are largely [[Overdetermination|overdetermined]]... so if you can't figure out how something works with your current approach/context, there's a decent chance you'll figure it out in another way later.

## Cheat!
See an interesting string? Google it, and search GitHub for it! You never know where open-source code pops up... (or where some helpful engineer has accidentally put proprietary code on GitHub). Not sure what protocol something's using? Look up the company's engineers on LinkedIn- what do they have experience with? Don't be afraid to use things other than the specific binary you're reversing to figure out how it works.

---

oh also if you see a function with loads of xrefs to it that seems really complicated, maybe does a bunch of [[Bitwise operation|bitwise operation]]s, maybe uses weird vector/[[Single-instruction multiple-data|SIMD]] instructions you don't understand, and takes at least one pointer as an argument... it's probably memcpy/memset/bzero/str\[n\]len/str\[n\]cpy. if it's not obviously something else, assume it is - if its prototype matches memcpy's, call it memcpy_maybe and DON'T GET STUCK trying to figure it out exactly unless something else means you need to (e.g. if a vuln would be exploitable only if it's strncpy instead of memcpy
