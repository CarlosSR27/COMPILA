%{
#include <stdio.h>
%}
%%
[01]+      {
              int i, valor = 0;
              for (i = 0; i < yyleng; i++)
                  valor = valor * 2 + (yytext[i] - '0');
              printf("Binario %s = Decimal %d\n", yytext, valor);
           }
.|\n       { /* otros caracteres: se ignoran */ }
%%
int yywrap() { return 1; }
int main()
{
    yylex();
    return 0;
}
