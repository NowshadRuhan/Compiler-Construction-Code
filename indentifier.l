%option noyywrap
%{
	#include<stdio.h>
%}


%%

[a-zA-Z_]+[a-zA-Z_0-9]*    printf(" Valid "); 
.* printf("Invalid");
\n ECHO;
%%
int main(int argc, char *argv[])
{
	yylex();

	return 0;
}