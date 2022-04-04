Many [[Microcontroller|microcontrollers]] have "bulk erase" mechanism to wipe the entire chip (clearing firmware and all)- this often removes [[Readout protection]], too! But this is often considered OK, because [[Firmware]] is supposed to be cleared. So you can't actually read any secrets out.

This has [[Security vibe checks|bad vibes]]- bulk erases must be strongly [[Atomic operation|atomic]].