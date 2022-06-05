## ❓ Czy można utworzyć, a jeśli tak to jak, kolejny commit zawierający rozwinięcie ostatniej wersji (commit piąty) opracowanego programu z części rozszerzonej, tak by program wykorzystywał drzewiastą strukturę źródeł?

<br />

## ✅ Odpowiedź:

<br />
	
#### 1. GIT
Tak, repozytorium GIT daje nam taką możliwość, jednakże, aby dołączyć puste foldery, takiej jak lib i bin, potrzeba utworzyć w każdym z nich specjalny plik ukryty nazwie ".gitignore", który pozwala na dołączenie pustego katalogu oraz przekaże GIT-owi, które pliki w nim powinien śledzić, a które nie. GIT nie dołącza pustych katalogów do gałęzi, gdyż ich nie śledzi.

<br />

#### 2. Makefile
Tak, aby tego dokonać, potrzebujemy wskazać naszemu kompilatorowi, gdzie znajdują się pliki źródłowe oraz pliki nagłówkowe. W tym celu stosujemy:

- dyrektywy vpath:

	```
	vpath %.c ./src
	vpath %.h ./include
	```
oraz
- zmienne standardowe:
	
	```
	CFLAGS = -g -I./include
	```
oraz
- ścieżki do pliku (w przykładzie — w celu utworzenia):
	
	```
	./lib/libObliczPole.a: ObliczPole.o
	```

.

Jeżeli kompilator wyświetli błąd kompilacji bibliotek statycznych i/lub dynamicznych, możemy wskazać kompilatorowi ich miejsce poprzez:

- zastąpienie ścieżki do folderu bibliotek w opcji -rpath lub zastąpienie jej w zmiennej odnoszącej się do tej opcji — **« _LIBPATH_ »**:

	```
	-rpath=./lib
	```
	
oraz/lub

- inicjalizację zmiennej `LD_LIBRARY_PATH`:

	```
	export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:« ścieżka »,
	gdzie « ścieżka » jest równa ścieżce absolutnej do folderu « lib »
 	```
.

> W celu inspekcji działania programu wykorzystującego drzewiastą strukturę danych, proszę o wykorzystanie commitu 6.


