%option noyywrap
/* Declaraciones */
%{
#include <stdio.h>
%}

/* Reglas */
%%
[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}   { printf("TOKEN_CORREO_VALIDO: %s\n", yytext); }
.|\n                                           { /* ignorar otros caracteres */ }
%%

/* Codigo (main) */
int main()
{
    yylex();
    return 0;
}
