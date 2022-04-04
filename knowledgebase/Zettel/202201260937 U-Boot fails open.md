[[U-Boot (bootloader)]] is often set up to run `bootcmd` and then just fall through into a [[U-Boot (bootloader)#U-Boot shell|U-Boot shell]].

Because of this, anything that makes normal booting fail will produce a shell!

The main countermeasure to this seems to just be putting a deadloop/reset at the end of `bootcmd`.

Also, locking down the U-Boot shell itself (though this is trickier than it sounds - a lot of U-Boot commands end up providing memory read-write, e.g. [[202201260945 U-Boot I2C commands allow memory read and write|the I2C read/write commands do!]] 

Ultimately, seems like [[202201212208 Defense in depth|defense in depth]] is the way to go... make it hard to get a shell, *and* do your best to make that shell useless