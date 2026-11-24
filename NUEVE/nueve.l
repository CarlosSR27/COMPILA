%option noyywrap
/* Declaraciones */
%{
#include <stdio.h>
int conteo[10] = {0};
%}

/* Reglas */
%%
[0-9]   { conteo[yytext[0] - '0']++; }
.|\n    { /* ignorar otros caracteres */ }
%%

/* Codigo (main) */
int main()
{
    yylex();
    printf("+--------+------------+\n");
    printf("| Digito | Frecuencia |\n");
    printf("+--------+------------+\n");
    for (int i = 0; i < 10; i++) {
        printf("|   %d    |     %2d     |\n", i, conteo[i]);
    }
    printf("+--------+------------+\n");
    return 0;
}
