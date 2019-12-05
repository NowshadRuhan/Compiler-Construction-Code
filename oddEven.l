%option noyywrap
%{
	#include<stdio.h>
	int length = 0;
%}
	

%%
\n if(length%2==0)printf("Even\n");else printf("Odd\n");length=0;
. length++;

%%
int main(int argc, char *argv[])
{
	yylex();

	return 0;
}