#!/bin/sh
set -eu
mkdir -p out
printf '#include <stdio.h>\nint main(void){puts("hello relay");return 0;}\n' > hello.c
cc -O2 -o out/hello hello.c
./out/hello
uname -a > out/uname.txt
