%option noyywrap
%{
	#include<stdio.h>
%}

%option yylineno

%%
^\n printf("%4d\n", yylineno-1);
(.*) printf("%4d\t%c\t%s", yylineno, yytext[0], yytext);
\n ECHO;

%%
int main(int argc, char *argv[])
{
	yylex();
	return 0;
}