# arm-principles-and-projects

A curated roadmap and project collection exploring ARM architecture principles, hands-on examples, and progressive learning projects for developers and learners. This repository documents practical exercises, minimal examples, and short experiments intended to teach core ARM concepts and toolchain usage.

Contents
- `first thing ever/` — Minimal ARM AArch64 "Hello World" example targeting macOS.

Roadmap
- Fundamentals: architecture overview, registers, instruction formats, and calling conventions.
- Toolchain: assembling, linking, debugging, and cross-compilation workflows (clang, as, ld, lldb).
- Systems programming: syscalls, low-level I/O, and small utilities.
- Projects: small, incremental projects demonstrating concepts (hello world → utilities → experiments).
- Outcomes: ability to read ARM assembly, produce reproducible binaries, and reason about low-level program behavior.

How to build / run (macOS, AArch64)
1. Assemble: `clang -c -target aarch64-apple-macos11 -o hello_world.o hello_world.s`
2. Link: `clang -o hello_world hello_world.o`
3. Run: `./hello_world`

License
This repository is dedicated to the public domain (CC0). See `LICENSE` for details.

Contributing
See `CONTRIBUTING.md` for preferred contribution and feedback guidelines.

