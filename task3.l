%option noyywrap
%{
	#include<stdio.h>
	int ans =0 ;
	int a = 0;
	int b = 0;
	int result = 0;

%}

d [0-9]
h [a-f]
%%
{d}@{d}  a = yytext[0]-48; b = yytext[2]-48; ans = (a*2)-b; printf("%d", ans);
{d}@{h}	 a = yytext[0]-48; b = yytext[2]-87; ans = (a*2)-b; printf("%d", ans);
{h}@{d}	 a = yytext[0]-87; b = yytext[2]-48; ans = (a*2)-b; printf("%d", ans);
{h}@{h}	 a = yytext[0]-87; b = yytext[2]-87; ans = (a*2)-b; printf("%d", ans);

{d}*@ ECHO;
@{d}* ECHO;

.ECHO;
%%
int main(int argc, char *argv[])
{	
	yylex();
	return 0;
}