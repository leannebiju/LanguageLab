%{
#include<stdio.h>
int yylex(void);
void yyerror();
int valid;
%}

%token NUM FOR VAR DTYPE RELOP AROP

%%

start	: E {valid=1;}
		;
		
E		: FOR'('VAR'='STH';'STH RELOP STH';'VAR'='EXPR')' '{'VAR'='EXPR';' '}'
		;
		
STH		: NUM
		| VAR
		;
		
EXPR	: EXPR AROP EXPR
		| STH
		;

%%

void yyerror() {
	return;
}
int main(void) {
	printf("Enter Expression: ");
	yyparse();
	if(valid==1) {
		printf("Valid\n");
	}
	else {
		printf("Invalid\n");
	}
	return 0;
}
