%{
	#include<stdlib.h>
	#include<stdio.h>
%}
%option noyywrap
%%
"+"	printf("OPERADOR_ARITMETICO (suma): %s\n", yytext);
"-"	printf("OPERADOR_ARITMETICO (resta): %s\n", yytext);
"*"	printf("OPERADOR_ARITMETICO (multiplicacion): %s\n", yytext);
"/"	printf("OPERADOR_ARITMETICO (division): %s\n", yytext);
"<="	printf("OPERADOR_RELACIONAL (menor o igual): %s\n", yytext);
">="	printf("OPERADOR_RELACIONAL (mayor o igual): %s\n", yytext);
"=="	printf("OPERADOR_RELACIONAL (igual): %s\n", yytext);
"!="	printf("OPERADOR_RELACIONAL (diferente): %s\n", yytext);
"<"	printf("OPERADOR_RELACIONAL (menor que): %s\n", yytext);
">"	printf("OPERADOR_RELACIONAL (mayor que): %s\n", yytext);
[ \t\n]	;
.	;
%%
int main()
{
	yylex();
	return 0;
}
