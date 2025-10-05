%{
#include <stdio.h>
int yylex(void);
void yyerror();
int valid = 0;
%}

%token NUM

%%

start: E {valid = 1;}
     ;

E : E '+' E
     | E '-' E
     | E '*' E
     | E '/' E
     | NUM
     ;

%%

void yyerror(){
	valid = 0;
}

int main(){
	printf("Enter expression : \n");
	yyparse();
	if(valid == 1)
		printf("Valid expression\n");
	else
		printf("Invalid Expression\n");
	return 0;
}
