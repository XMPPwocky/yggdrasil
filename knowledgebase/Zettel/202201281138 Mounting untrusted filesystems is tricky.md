Lots of [[Kernel]] [[Attack surface]] in [[Filesystem]] drivers.

Another big threat is [[Symbolic link]]s. (of course, filesystems that don't have symlinks have less of an issue here, e.g. [[FAT (filesystem)]])

If a user already has unprivileged code execution on a system, mounting a filesystem with an evil [[setuid]] binary provides [[Privilege escalation]] quite cleanly, too.