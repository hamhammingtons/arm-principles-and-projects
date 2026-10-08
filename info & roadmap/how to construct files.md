How to build / run (macOS, AArch64)
1. Assemble: `clang -c -target aarch64-apple-macos11 -o hello_world.o hello_world.s`
2. Link: `clang -o hello_world hello_world.o`
3. Run: `./hello_world`

make sure its in the same directory as the files as it might not work 

update this someday to explain how the cli commands work like clang and so on