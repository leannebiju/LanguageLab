 // Program to count number of identifiers with length greater than 5, replace int with float and print number of statements

%{
#include<stdio.h>
int id5 = 0, st = 0;
%}

%%

"int" {printf("float");}
[a-zA-Z_][a-zA-Z0-9_]* {if (yyleng>5) {id5++;} printf("%s",yytext);}
; {st++; printf(";");}
. {printf("%c",yytext[0]);}

%%

int main(void){
	yylex();
	printf("\nNumber of statements : %d\n", st);
	printf("Number of identifiers with length greater than 5 : %d\n", id5);
	return 0;
}
