%{
#include <stdio.h>
int errores = 0;
%}
%%
[a-zA-Z_][a-zA-Z0-9_]*   { printf("IDENTIFICADOR: %s\n", yytext); }
[0-9]+                   { printf("ENTERO: %s\n", yytext); }
","                      { printf("SEPARADOR: ,\n"); }
[ \t\n]+                 { /* espacios: se ignoran */ }
.                        { printf("ERROR: token no valido '%s'\n", yytext); errores++; }
%%
int yywrap() { return 1; }
int main()
{
    yylex();
    printf("Total de errores: %d\n", errores);
    return 0;
}
