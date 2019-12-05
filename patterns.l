%option noyywrap
%{
	#include<stdio.h>
%}
vowel [aeiouAEIOU]
consonant [B-DF-HJ-NP-TV-Zb-df-hj-np-tv-z]
digit [0-9]
all [^ \n]

exp [^a-zA-Z0-9]
%%


{vowel}{all}*{vowel} printf("VV");
{vowel}{all}*{consonant} printf("VC");
{vowel}{all}*{digit} printf("VD");

{consonant}{all}*{consonant} printf("CC");
{consonant}{all}*{vowel} printf("CV");
{consonant}{all}*{digit} printf("CD");

{digit}{all}*{consonant} printf("DC");
{digit}{all}*{vowel} printf("DV");
{digit}{all}*{digit} printf("DD");

.*{exp} printf(" Invalid ");
. ECHO;

%%
int main(int argc, char *argv[])
{
	yylex();
	return 0;
}