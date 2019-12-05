%option noyywrap
%{
	#include<stdio.h>
%}
number [0-9]
operator [-=*%!+/]
%%
{number}+  printf(" NUMBER ");
{operator}+  printf(" OPERATOR ");
.ECHO;
\n ECHO;
%%
int main(int arge, char *argv[])
{
	yylex();

	return 0;
}