%{
#include <stdio.h>
%}
%%
0[xX][0-9a-fA-F]+   {
        long valor = 0;
        int i, d;
        for (i = 2; i < yyleng; i++) {
            char c = yytext[i];
            if (c >= '0' && c <= '9')      d = c - '0';
            else if (c >= 'a' && c <= 'f') d = c - 'a' + 10;
            else                           d = c - 'A' + 10;
            valor = valor * 16 + d;
        }
        printf("Hexadecimal %s = Decimal %ld\n", yytext, valor);
    }
.|\n    { /* otros caracteres: se ignoran */ }
%%
int yywrap() { return 1; }
int main()
{
    yylex();
    return 0;
}
