The ZigZag Program (./zigzag)

This program reads a list of numbers from standard input and prints 
a series of lines to standard output. Each line either says "Zig" or "Zag".

The program reads the first number, and prints "Zig", then enters "Zig mode".

In "Zig mode", the program reads numbers continuously until it encounters 
a number that is smaller than the previous number it read. 
It then prints "Zag" and enters "Zag mode".

In "Zag mode",  the program reads numbers continuously until it encounters 
a number that is larger than the previous number it read. 
It then prints "Zig" and enters "Zig mode".

This repeats until the entire list of numbers is read.

Example input:
1 2 3 2 1 0 -1 -2 -3 -2 -1 0 1 2 3 0

Expected output:
Zig
Zag
Zig
Zag

The moments where the program "changes modes" are highlighted below:

1 2 3 2 1 0 -1 -2 -3 -2 -1 0 1 2 3 0
^     ^               ^            ^       
Zig   Zag             Zig          Zag
