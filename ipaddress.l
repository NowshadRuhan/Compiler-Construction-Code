%option noyywrap
%{
	#include<stdio.h>
%}

ip [0-9]
other [1-9]
one [1]
two [2]
%%

{one}{ip}{0,2}  printf("valid");
{two}{ip}{0,2} printf("valid");
0 printf("valid");
{other}{0,2} printf("valid");

.+ printf("Invalid");
\n ECHO;

%%
int main(int argc, char *argv[])
{
	yylex();
	return 0;
}