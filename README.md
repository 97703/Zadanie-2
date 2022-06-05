<img src="https://sat02pap002files.storage.live.com/y4mlbOA0c3yUfVvZ6Tuh2OECfGeMFgmjmGxxQeOobJMqNwW23cqzFU8ku03deSPHx15qHvw90O3iAKs1Jc9gj9514KSuuOZcIQpX_HKTrS4ahbyiktJNcLx7eNeeurmziPtc6rSAH9HNytutT5vd4k6fVXie6_hWpBeU-7rDQVf9OHVHNH1QtIn4tDNGqfo3zG2ldPmyg7ZYFbcTtzCMHx9Uw/WEII.jpg?psid=1&width=2718&height=1758" height="100" />

> **Wstęp do Systemów Operacyjnych**

<br />

Termin zajęć:
	
	wtorek, godz. 12:15,
	
Numer na liście:
	
	7,

Imię i nazwisko:

	Paweł Pieczykolan,
	I rok studiów inżynierskich, IIST 2.5/10.

# Zadanie nr 2 — program « Code 2 »

<br />

**1. [Informacje ogólne](#1-informacje-ogólne)**\
\
**2. [Uruchomienie](#2-uruchomienie)**\
\
**3. [Wersje — « Commity »](#3-wersje---commity-)**\
\
**4. [Podsumowanie](#4-podsumowanie)**

<br />

## 1. Informacje ogólne
*Podstawowe informacje dotyczące opracowania.*

<br />

Projekt zawiera opracowane rozszerzone <ins>zadanie nr 2</ins> z przedmiotu Wstęp do Systemów Operacyjnych.\
Zgodnie z zaleceniami rozszerzenia, zadanie nr 2 zostało zrealizowane z wykorzystaniem platformy GitHub™ i oprogramowania Git™.

<br />

Finalnym efektem wykonania wszystkich wymogów zadania jest osiągnięcie kompilacji plików w strukturze katalogowej.

<br />

Drzewo katalogów (po uruchomieniu pliku **« _Makefile_ »**) prezentuje się następująco:

<br />

```diff
 .
+├── bin
 │   └── Code2
 ├── Code2.o
+├── include
+│   ├── ObliczObjetosc.h
+│   └── ObliczPole.h
+├── lib
 │   ├── libObliczObjetosc.so
 │   └── libObliczPole.a
+├── Makefile
 ├── ObliczObjetosc.o
 ├── ObliczPole.o
+├── README_extra.md
+├── README.md
+└── src
+    ├── Code2.c
+    ├── ObliczObjetosc.c
+    └── ObliczPole.c
```
<br />

Pliki: `Code2.c`, `ObliczObjetosc.c`, `ObliczPole.c` oraz `ObliczObjetosc.h` i `ObliczPole.h`, zwane dalej **« _programem_ »** zostały napisane w języku **« _C_ »** i stanowią praktyczny problem kompilacji programów w systemach z rodziny **« _Linux_ »**.

Działanie programu **« _Code2_ »** bazuje na uzyskaniu od użytkownika danych z klawiatury. Użytkownik wybiera, czy program powinien obliczyć polę kwadratu, objętość sześcianu lub polę kwadratu oraz objętość sześcianu. Program zawiera minimalną obsługę błędów — podane parametry są sprawdzane tylko pod kątem czy nie są one liczbami ujemnymi. Obliczone zapytanie zostaje wyświetlone na ekranie i program kończy swoje działanie.

<br />

Plik **« _Makefile_ »** jest elementarnym składnikiem zadania, to znaczy zawiera dyrektywy konieczne do przeprowadzenia kompilacji, instalacji i usunięcia programu.

<br />

Pliki `README.md` oraz `README_extra.md` są przeznaczone dla użytkowników i nie wpływają na przebieg kompilacji lub wykonania zadania.

<br />

Dołączone elementy do repozytorium oznaczono na drzewie katalogowym kolorem zielonym.

Pozostałe elementy są wynikiem kompilacji i/lub instalacji programu, z tego powodu nie zostały one dołączone do tego repozytorium.

<br />

## 2. Uruchomienie
*Możliwości pliku Makefile wraz z instrukcją.*

<br />

**`❗Zaleca się, aby uruchomienie instalatora Makefile odbywało się w katalogu zawierającym jedynie pliki z repozytorium.`**

<br />

- [x] Aby uruchomić kompilację i zainstalować program, wpisz: **« _make -f Makefile_ »**.
- [x] Aby uruchomic program: 
	- dla commitów od 2. — do 5., wpisz: **« _./Code2_ »**;
	- dla commitu 6., wpisz: **« _./bin/Code2_ »**.
- [x] Aby wyczyścić pliki utworzone przez Makefile, wpisz: **« _make -f Makefile clear_ »**.

<br />

## 3. Wersje — « Commity »
*Szczegółowe rozwiązanie zadania na podstawie commitów.*

<br />

W repozytorium na głównej gałęzi (tak zwanej gałęzi **« _main_ »**) zostały utworzone commity:
- [x] ```commit 1. → Inicjalizacja repozytorium.```

	▶ Utworzenie repozytorium.\
	▶ Dołączenie plików: `Code2.c`, `ObliczObjetosc.c`, `ObliczPole.c`, `ObliczObjetosc.h`, `ObliczPole.h` oraz `README.md`.

- [x] ```commit 2. → Dodanie najprostszego pliku Makefile.```

	▶ Dołączenie pliku: `Makefile`.
	
- [x] ```commit 3. → Rozbudowa pliku Makefile o zmienne automatyczne.```
	
	▶ Aktulizacja pliku `Makefile` o zmienne automatyczne.
	
- [x] ```commit 4. → Rozbudowa pliku Makefile o regułu przyrostków.```
	
	▶ Aktulizacja pliku `Makefile` o reguły przyrostków.
	
- [x] ```commit 5. → Rozbudowa pliku Makefile o reguły wzorca.```

	▶ Aktulizacja pliku `Makefile` o reguły wzorca.

<br />

***[DODATKOWY — NIEWYMAGANY]***
- [x] ```commit 6. → Implementacja drzewa.```
	
	▶ Utworzenie nowych katalogów: `lib`, `src`, `include` oraz `bin`.\
	▶ Aktulizacja pliku `Makefile` o nowe katalogi docelowe.\
	▶ Utworzenie wymaganego `README_extra.md`.\
	▶ Dołączenie pliku `README_extra.md` oraz nowopowstałych katalogów do repozytorium, aktualizacja struktury repozytorium.

<br />

Każdy commit jest osobnym krokiem milowym w procesie budowy zadania. Z tego powodu, dowolny commit zawierający plik `Makefile` (numery od 2 — do 6), pozwalaja na sukcesywną kompilację, instalację oraz usunięcie programu **« _Code2_ »**.

<br />

## 4. Podsumowanie

<br />

Celem zadania było zaprezentowanie skutecznej kompilacji, instalacji oraz usunięcia programu **« _Code2_ »**.\
Zaprezentowane i umieszczone w repozytorium pliki spełniają wymogi zadania, to znaczy:

✅ Napisano program Code2, stanowią o tym pliki: `Code2.c`, `ObliczObjetosc.c`, `ObliczPole.c`, `ObliczObjetosc.h` i `ObliczPole.h`.\
✅ Opracowano plik `Makefile`.\
✅ Połączono się z systemem Git™ oraz GitHub™.\
✅ Przedstawiono proces rozwoju oprogramowania za pomocą commitów.\
✅ Przygotowano strukturę katologową.\
✅ Utworzono plik `README_extra.md`.\
✅ Utworzono specjalny commit korzystający z drzewiastej struktury źródeł.

<br />

Wykazano więc zgodność zrealizowanego projektu z założeniami zadania.

<br />
