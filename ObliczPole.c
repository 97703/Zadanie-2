#include <stdio.h>
#include "ObliczPole.h"

void obliczPole()
{
    float a = 0;
    float pole = 0;
    printf("Proszę podać długość boku kwadratu: ");
    scanf("%f", &a);
    if ( a >= 0 )
    {
        pole = a * a;
        printf("Pole kwadratu jest równe: ");
        printf("%0.2f", pole);
        printf("\n");
    }
    else
    {
        printf("Długość nie może być liczbą ujemną.\n");
    }
}
