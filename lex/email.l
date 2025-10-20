 // Program to accept valid email address

%{
#include<stdio.h>
int valid = 0;
%}

%%

[a-zA-Z]+[a-zA-Z0-9]*(@)[a-z]+(.com) {valid = 1; return 0;}
.|\n {return 0;}

%%

int main(){
	yylex();
	if(valid == 1)
		printf("Valid email address \n");
	else 
		printf("Invalid email address \n");
	return 0;
}
