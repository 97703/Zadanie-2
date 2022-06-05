# PLIK MAKEFILE #

 .PHONY: clear

Code2: Code2.o libObliczPole.a libObliczObjetosc.so
	gcc -o Code2 Code2.o libObliczPole.a libObliczObjetosc.so -Wl,-rpath,.
	
Code2.o: Code2.c
	gcc -c Code2.c

# utwórz bibliotekę statyczną dla obliczenia pola kwadratu

libObliczPole.a: ObliczPole.o
	ar cr libObliczPole.a ObliczPole.o

# utwórz bibliotekę dynamiczną dla obliczenia objętości sześcianu 

libObliczObjetosc.so: ObliczObjetosc.o
	gcc -shared -o libObliczObjetosc.so ObliczObjetosc.o

ObliczPole.o: ObliczPole.c
	gcc -c ObliczPole.c

ObliczObjetosc.o: ObliczObjetosc.c
	gcc -c -fPIC ObliczObjetosc.c

# wyczyść utworzone pliki - niestandardowe polecenie dołączane do make -f Makefile

clear:
	rm -f ./*.o ./*.a ./*.so ./Code2
