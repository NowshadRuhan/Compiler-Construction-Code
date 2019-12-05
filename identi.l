%option noyywrap
%{
	#include<stdio.h>
%}

firstone [a-zA-Z_]
lastone [a-zA-Z_0-9]

%%

{firstone}+{lastone}* printf("Its Identifier");
.* printf("Its Not Identifier");
\n ECHO;

%%
int main(int argc, char *argv[])
{
	yylex();
	return 0;
}