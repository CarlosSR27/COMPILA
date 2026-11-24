%{
	#include<stdlib.h>
	#include<stdio.h>
	int mayus=0, minus=0, digitos=0, espacios=0, otros=0;
%}
%option noyywrap
%%
[A-Z]	mayus++;
[a-z]	minus++;
[0-9]	digitos++;
[ \t]	espacios++;
\n	;
.	otros++;
%%
int main()
{
	yylex();
	printf("Letras mayusculas: %d\n", mayus);
	printf("Letras minusculas: %d\n", minus);
	printf("Digitos: %d\n", digitos);
	printf("Espacios en blanco: %d\n", espacios);
	printf("Otros caracteres: %d\n", otros);
	return 0;
}
