# PLIK MAKEFILE #

# wykorzystane zmienne standardowe:

AR = ar
CC = gcc
CFLAGS = -g

PROGRAM = Code2
CLR = rm -f
CLR_F = ./*.o ./*.a ./*.so ./$(PROGRAM)
LIBPATH=.

# wykorzystane zmienne automatyczne:

# $< $@ $^

 .PHONY: clean
 
 # wskaż kompilatorowi wszystkie sufiksy (przyrostki) zawartych plików
 
 .SUFFIXES: .c .o .a .so .h
 
 # skompiluj pliki z sufiksami .c, .o z identycznymi nazwami
 
.c.o:
	$(CC) $(CFLAGS) -c $<
	
# skompiluj program główny	
	
.o:
	$(CC) $(CFLAGS) -o $@ $^ -Wl,-rpath=$(LIBPATH)

	
$(PROGRAM): Code2.o libObliczPole.a libObliczObjetosc.so
Code2.o: Code2.c

# skompiluj bibliotekę statyczną (niemożność wykorzystania reguły przyrostków - inna nazwa)

libObliczPole.a: ObliczPole.o
	$(AR) cr $@ $<
	
# skompiluj bibliotekę dynamiczną (niemożność wykorzystania reguły przyrostków - inna nazwa)
	
libObliczObjetosc.so: ObliczObjetosc.o
	$(CC) $(CFLAGS) -shared -o $@ $<
ObliczPole.o: ObliczPole.c
ObliczObjetosc.o: ObliczObjetosc.c

clear:
	$(CLR) $(CLR_F)
