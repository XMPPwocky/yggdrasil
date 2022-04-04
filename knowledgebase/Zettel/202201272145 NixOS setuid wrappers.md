interesting behavior I noticed on [[NixOS]] - presumably because the binaries in the [[Nix store]] can't be suid (or because builders run as non-root?), there's instead a [[Shell script|shell script]] that's [[setuid]]?

```

[nix-shell:~]$ which ps
/run/current-system/sw/bin/ps

[nix-shell:~]$ which sudo
/run/wrappers/bin/sudo
```

#moretoexplore