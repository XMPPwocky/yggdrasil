When [[Fuzzing]], subtle [[Memory corruption]] issues (or, I guess, state corruption in general?), which may not immediately crash, may either not be detected or get attributed to the wrong input. [[AddressSanitizer|ASAN]] can help a lot here; also [[libdislocator]]

Underlying problem is statefulness of target across invocations; thus snapshotting fixes this.