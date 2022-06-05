# PLIK MAKEFILE #

AR = ar
CC = gcc
CFLAGS = -g

PROGRAM = Code2
CLR = rm -f
CLR_F = ./*.o ./*.a ./*.so ./$(PROGRAM)
LIBPATH=.

# $< $@ $^

 .PHONY: clean
 .SUFFIXES: .c .o .a .so .h

# reguła dla plików bez przyrostków (program główny Code2)

%: %.o
	$(CC) $(CFLAGS) -o $@ $^ -Wl,-rpath=$(LIBPATH)

# reguła dla plików z przyrostkami .o

%.o: %.c
	$(CC) $(CFLAGS) -c $<

# reguła dla biblioteki statycznej

lib%.a: %.o	
	$(AR) cr $@ $^

# reguła dla biblioteki dynamicznej

lib%.so: %.o
	$(CC) $(CFLAGS) -shared -o $@ $<

# reguła dla pliku biblioteki statycznej

%STATIC.o: %.c
	$(CC) $(CFLAGS) -c $<

# reguła dla pliku biblioteki dynamicznej

%DYNAMIC.o: %.c
	$(CC) $(CFLAGS) -c -fPIC $<

$(PROGRAM): Code2.o libObliczPole.a libObliczObjetosc.so
Code2.o: Code2.c
libObliczPole.a: ObliczPole.o
libObiczObjetosc.so: ObliczObjetosc.o
ObliczPoleSTATIC.o: ObliczPole.c
ObliczObjetoscDYNAMIC.o: ObliczObjetosc.c

clear:
	$(CLR) $(CLR_F)
