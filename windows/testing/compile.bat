nasm -felf64 %1.asm -o %1.o
gcc -o %1.exe %1.o
%1
pause
