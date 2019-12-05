%option noyywrap
%{
	#include<stdio.h>
	int i=0;
%}

abc [abc]



%%
{abc}+ for(i=0; i<yyleng; i++)if((yytext[i]=='a')||(yytext[i]=='b')||(yytext[i]=='c')){if(yytext[i]=='a'){printf("x");}else if(yytext[i]=='b'){printf("y");}else if(yytext[i]=='c'){printf("z");}}
t.* printf("T_START");
.*w printf("END_W");

.ECHO;
%%
int main(int argc, char *argv[])
{	
	yylex();
	return 0;
}