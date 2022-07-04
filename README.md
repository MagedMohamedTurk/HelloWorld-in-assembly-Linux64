This is a "Hello World" program written in assembly language.<br>
The instructions are written for Linux 64bits.<br>

# Compile<br>
$ nasm -f elf64 -o hello.o hello.asm<br>
$ ld -o hello hello.o<br>

# Run:<br>
$ ./hello

