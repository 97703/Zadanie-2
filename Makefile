# PLIK MAKEFILE #

# wykorzystane zmienne standardowe:

# zmienne kompilatora

AR = ar
CC = gcc
CFLAGS = -g

# zmienna główna programu

PROGRAM = Code2

# zmienna polecenia i opcji wyczyszczenia plików kompilacyjnych

CLR = rm -f

# zmienna wskazująca na pliki kompilacyjne

CLR_F = ./*.o ./*.a ./*.so ./$(PROGRAM)

# zmienna ścieżki biblioteki

LIBPATH=.

# wykorzystane zmienne automatyczne:

# $< $@ $^

 .PHONY: clean

$(PROGRAM): Code2.o libObliczPole.a libObliczObjetosc.so
	$(CC) $(CFLAGS) -o $@ $^ -Wl,-rpath=$(LIBPATH)
	
Code2.o: Code2.c
	$(CC) $(CFLAGS) -c $<
	
libObliczPole.a: ObliczPole.o
	$(AR) cr $@ $<

libObliczObjetosc.so: ObliczObjetosc.o
	$(CC) $(CFLAGS) -shared -o $@ $<

ObliczPole.o: ObliczPole.c
	$(CC) $(CFLAGS) -c $<

ObliczObjetosc.o: ObliczObjetosc.c
	$(CC) $(CFLAGS) -c -fPIC $<
	
clear:
	$(CLR) $(CLR_F)
