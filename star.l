%option noyywrap
%{
	#include<stdio.h>
%}

%%

\* printf("Star");
19\.20 printf("Found");



.ECHO;
\n ECHO;
%%
int main(int argc, char *argv[])
{
	yylex();
	return 0;
}