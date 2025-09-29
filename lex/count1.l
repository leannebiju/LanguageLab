	// Program to count number of characters, lines and words
%{
#include<stdio.h>
int chars = 0, words = 0, lines = 0;
%}

%%
\n {lines++; words++;}
[ \t]+ {words++;}
. {chars++;}
%%

int main(void){
	yylex();
	printf("lines : %d\nWords : %d\nCharacters: %d\n", lines, words, chars);
	return 0;
}
