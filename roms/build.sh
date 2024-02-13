vasmm68k_mot -spaces -Fbin -L test.lst test.asm -o test.mx1
python3 tomem.py test.mx1 > test.mem


