Uses [[Nix]] to declaratively configure systems... basically producing a bunch of config files as outputs. Based on the [[Linux]] kernel

One result of this is that a lot of system configuration files are read-only (they wind up in, or symlinked to, the [[Nix#Nix store]]... which can be quite obnoxious.

Tragically doesn't support [[Secure boot]] yet, though it's arguably better-positioned than almost any other distribution for it...