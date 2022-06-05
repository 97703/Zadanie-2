# PLIK MAKEFILE #

# wykorzystane zmienne standardowe:

AR = ar
CC = gcc
CFLAGS = -g

PROGRAM = Code2
CLR = rm -f
CLR_F = ./*.o ./*.a ./*.so ./$(PROGRAM)
LIBPATH=./lib

# zmienna tworzenia bibliotek w folderze ./lib

LIB_C=./lib/

# zmienna biblioteki statycznej

LIB_ST=libObliczPole.a

# zmienna biblioteki dynamicznej

LIB_DY=libObliczObjetosc.so

# $< $@ $^

 .PHONY: clean
 .SUFFIXES: .c .o .a .so .h

# przeszukaj katalogi w poszukiwaniu plików

vpath %.c ./src
vpath %.h ./include

%: %.o
	$(CC) $(CFLAGS) -o ./bin/$@ $^ -I./include -Wl,-rpath=$(LIBPATH)
	
%.o: %.c
	$(CC) $(CFLAGS) -c $< -I./include

# skompiluj bibliotekę statyczną w ./lab/

$(LIB_C)lib%.a: %.o	
	$(AR) cr $@ $^

# skompiluj bibliotekę dynamiczną w ./lab/

$(LIB_C)lib%.so: %.o
	$(CC) $(CFLAGS) -shared -o $@ $<

%STATIC.o: %.c
	$(CC) $(CFLAGS) -c $<

%DYNAMIC.o: %.c
	$(CC) $(CFLAGS) -c -fPIC $<

# skorzystaj z biblioteki dynamicznej i dynamicznej z ./lib/ w celu skompilowania programu Code2

$(PROGRAM): Code2.o $(LIB_C)$(LIB_ST) $(LIB_C)$(LIB_DY)
Code2.o: Code2.c

# utwórz bibliotekę statyczną w ./lib/

$(LIB_C)$(LIB_ST): ObliczPole.o

# utwórz bibliotekę dynamiczną w ./lib/

$(LIB_C)$(LIB_DY): ObliczObjetosc.o
ObliczPoleSTATIC.o: ObliczPole.c
ObliczObjetoscDYNAMIC.o: ObliczObjetosc.c

clear:
	$(CLR) $(CLR_F)
