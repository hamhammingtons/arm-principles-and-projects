# learning-arm

Small ARM learning projects and experiments collected as a portfolio.

Contents:
- `first thing ever/` — small ARM hello world example

How to build/run (macOS, AArch64):
1. Assemble: `clang -c -target aarch64-apple-macos11 -o hello_world.o hello_world.s`
2. Link: `clang -o hello_world hello_world.o`
3. Run: `./hello_world`

License: Add a license file if you want to make this explicitly reusable.
