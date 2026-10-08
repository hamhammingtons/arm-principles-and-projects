.global _main
.align 4

_main:
    // Syscall write(1, msg, len)
    mov x0, #1              // File descriptor 1 (stdout)
    adrp x1, msg@PAGE       // Load the page address of msg
    add x1, x1, msg@PAGEOFF // Add the page offset
    mov x2, #14             // Length of the message
    mov x16, #4             // Syscall number for write (4 on macOS)
    svc #0x80               // Make the syscall

    // Syscall exit(0)
    mov x0, #0              // Return code 0
    mov x16, #1             // Syscall number for exit (1 on macOS)
    svc #0x80               // Make the syscall

.data
msg:
    .ascii "Hello, World!\n"