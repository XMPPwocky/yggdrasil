---
title: {Lock-in-Pop}: Securing Privileged Operating System Kernels by Keeping on the Beaten Path
authors: Yiwen Li, Brendan Dolan-Gavitt, Sam Weber, Justin Cappos
year: 2017
DOI: 
---

[Open in Zotero](zotero://select/items/@liLockinPopSecuringPrivileged2017)

> We perform a quantitative analysis of resilience to flaws in two versions of the [[Linux]] kernel (version 3.13.0 and version 3.14.1), and find that only about 3% of the bugs are present in popular code paths, despite these paths accounting for about one-third of the total reachable kernel code.

i.e. strong support for [[202201281049 Uncommon paths are buggy]]

They then propose a solution which is... interesting... basically making a [[Virtual machine]] which effectively disallows hitting those uncommon paths! directly reducing [[Attack surface]]. Then they add functionality back *but in userspace*. Authors claim 8-12x reduction in exposed [[Zero-day]] [[Kernel]] bugs.