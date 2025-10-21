%{
#include<stdio.h>
int yylex(void);
void yyerror();
int valid;
%}

%token IF ELSE VAR GT LT EQ LE GE NE NUM

%%

line	: expr {valid=1;}
		;

expr	: IF'('cond')' '{'stmt'}' ELSE '{'stmt'}'
		| IF'('cond')' '{'stmt'}'
		;
		
cond	: sth GT sth
		| sth LT sth
		| sth GE sth
		| sth LE sth
		| sth EQ sth
		| sth NE sth
		;
		
sth		: VAR
		| NUM
		;
		
stmt	: VAR '=' armt';'
		;
		
armt	: armt '+' armt
		| armt '-' armt
		| armt '*' armt
		| armt '/' armt
		| sth
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
