%{
	#include<stdlib.h>
	#include<stdio.h>
%}
%option noyywrap
%%
"if"|"else"|"while"|"int"	printf("PALABRA_RESERVADA: %s\n", yytext);
[a-zA-Z][a-zA-Z0-9]*	printf("IDENTIFICADOR: %s\n", yytext);
[0-9]+	printf("NUMERO_ENTERO: %s\n", yytext);
[ \t\n]	;
.	;
%%
int main()
{
	yylex();
	return 0;
}
