%option noyywrap
%{
	#include<stdio.h>
	int i = 0;
%}

e [0]
o [1]
%option yylineno

%%
aaa printf("AAA %s\n", yytext);
{e}.* for(i=0; yytext[i]!='\0'; i++);if(i%2==0)printf("Even\n");else ECHO;
{o}.* for(i=0; yytext[i]!='\0'; i++);if(i%2!=0)printf("Odd\n");else ECHO;

%%
int main(int argc, char *argv[])
{
	yylex();

	return 0;
}