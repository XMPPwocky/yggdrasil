# Methods
## "Traditional"
The classic method of DLL injection is still pretty simple - first, you `VirtualAllocEx` some scratch buffer *in your target process's address space*; then `WriteProcessMemory` the name/path of your desired DLL into that scratch buffer; finally you `CreateRemoteThread` to spawn a thread in the target process- passing the address of `LoadLibrary`, with a "parameter" pointing to your scratch buffer.

How do you find `LoadLibrary` in the target process's address space? There's [[Address space layout randomization|ASLR]] involved! Well... apparently not really, because LoadLibrary is in a Windows core DLL... and apparently they only change their address once per "session"? What.

https://stackoverflow.com/questions/22750112/dll-injection-with-createremotethread

## Manual-map
Using `VirtualAllocEx` and `WriteProcessMemory`, you load each section from your DLL (generally parsing its [[Portable Executable (file format)|PE]] header) directly into your target process (not relying on the normal Windows linker). Can be stealthier... but can also draw attention. [[202201212207 Constrain, then kill]]

# Flashcards #flashcards 

For "traditional" DLL injection, you need the address of `LoadLibrary` in the target process. How do you find it? There's [[Address space layout randomization|ASLR]] involved!::Well... apparently not really, because LoadLibrary is in `kernel32.dll`... and kernel32 and ntdll only change their address once per "session".
<!--SR:!2022-03-24,35,230-->
