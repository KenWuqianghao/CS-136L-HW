The Compare Program (./compare)

* WARNING: The provided implementation of the Compare program has a bug!
  Its behaviour will differ from what is described below in some cases.
  This is intentional, to let you see what happens when a test in a test
  suite fails.

This is a helper script for the ZigZag program (see zigzag-README.txt).
It expects exactly three arguments on the command line.

The first argument should either be "Zig" or "Zag". This represents the
current mode of the ZigZag program.

The second and third arguments should be numbers. The second argument
represents the second most recent number read by the ZigZag program, and
the third argument represents the most recent number.

If the input is valid, the Compare program prints a single line containing
either "Zig" or "Zag, which represents the new mode for the ZigZag program.
Specifically:
- If the first argument is "Zig" and the third argument is strictly less 
  than the second argument, it outputs "Zag".
- If the first argument is "Zig" and the third argument is greater than or
  equal to the second argument, it outputs "Zig".
- If the first argument is "Zag" and the third argument is strictly greater
  than the second argument, it outputs "Zig".
- If the first argument is "Zag" and the third argument is less than or
  equal to the second argument, it outputs "Zag".

If the input is not valid, the Compare program prints an error message to
standard error. Here are the possible error cases:
- Less than three arguments are provided.
- More than three arguments are provided.
- The first argument is not either "Zig" or "Zag".

The Compare program does not check that the second and third arguments
are numbers. The result of providing non-numeric input for these 
arguments is unspecified.
