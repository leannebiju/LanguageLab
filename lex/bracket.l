	//LEX program to replace { and } with BEGIN and END
%{
#include<stdio.h>
%}

%%
[{] {printf("BEGIN");}
[}] {printf("END");}
%%

int main(void){
	yylex();
	return 0;
}
