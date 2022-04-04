in ```fs/proc``` 

# /proc/pid
This is an inherently [[Race condition|race-y]] API - permissions checks are mostly done when a file is *opened*, but processes can *gain privileges but keep the same PID and [[struct task_struct|task_struct]]*. In particular, [[setuid]] binaries - an unprivileged user process can exec a SUID binary and thus gain privileges.

A comment in the kernel source says as much, but it's generally tricky to avoid this. For things that touch virtual memory, the main countermeasure seems to be the way [[procfs#proc_mem_open|proc_mem_open]] is used - it's a nice example of a [[Misuse-resistant API]]

## proc_mem_open
checks for [[ptrace]] permission, and if successful returns a [[struct mm]]`*`

generally, all the interesting operations which read another process's memory (`/proc/pid/mem` but also things like `/proc/pid/environ`) invoke `proc_mem_open` in their "open" handler, and store the `struct mm*` in their [[struct file|struct file]]`*`. This is sad (from an attacker's point of view), because it means you can't trivially open `/proc/pid/mem` to a child process running as you, `execve` a [[setuid]] binary, and use that previously opened [[File descriptor]] to read/write that SUID binary's memory