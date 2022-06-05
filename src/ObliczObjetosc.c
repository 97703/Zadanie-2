#include <stdio.h>
#include "ObliczObjetosc.h"

void obliczObjetosc()
{
    float a = 0;
    float objetosc = 0;
    printf("Proszę podać długość krawędzi szcześcianu: ");
    scanf("%f", &a);
    if ( a >= 0 )
    {
        objetosc = a * a * a;
        printf("Objętość sześcianu jest równa: ");
        printf("%0.2f", objetosc);
        printf("\n");
    }
    else
    {
        printf("Długość nie może być liczbą ujemną.\n");
    }
}
