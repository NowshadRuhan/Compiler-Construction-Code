%option noyywrap
%{
	#include<stdio.h>
	int number = 0;
%} 

d [0-9]


%%
{d}+\.{d}+ printf("float"); number++;
END  printf("Total = %d", number);number = 0;
.* printf("Not float");

%%
int main(int argc, char *argv[])
{	
	yylex();

	return 0;
}