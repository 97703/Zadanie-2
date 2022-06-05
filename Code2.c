#include <stdio.h>
#include "ObliczPole.h"
#include "ObliczObjetosc.h"
#include <locale.h>

int main()
{
    setlocale(LC_ALL, "Polish");
    
    int chc = 0; // zmienna wyboru
    
    while ( chc != 1 && chc != 2 && chc != 3 && chc != 4 )
    {
    	printf("Proszę wybrać numer zadania:\n\n1) Oblicz pole kwadartu\n2) Oblicz objętość sześcianu\n3) Oblicz pole kwadratu oraz oblicz objętość sześcianu\n4) Wyjdź z programu.\n");
    	printf("\nWybór: ");
    	scanf("%d", &chc);
    	printf("-----------------------------\n");
    	if ( chc == 1 )
    	{
    		obliczPole();
    	}
    	else if ( chc == 2 )
    	{
    		obliczObjetosc();
    	}
    	else if ( chc == 3 )
    	{
    		obliczPole();
    		printf("\n-----------------------------\n\n");
    		obliczObjetosc();
    	}
    	else if ( chc == 4 )
    	{
    		printf("Opuszczono program.\n");
    		return 0;
    	}
    	else
    	{
    		printf("Brak numeru takiego zadania.\n");
    	}
    	printf("-----------------------------\n");
    }
    
    return 0;
}
