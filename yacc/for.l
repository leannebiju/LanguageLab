%{
#include "y.tab.h"
%}

%%

"for" 							{return FOR;}
"int"|"float"|"char"|"double" 	{return DTYPE;}
[a-zA-Z]+ 						{return VAR;}
[0-9]+ 							{return NUM;}
"<="|">="|"=="|"!="|"<"|">" 	{return RELOP;}
"+"|"-"|"*"|"/" 				{return AROP;}
[ \t\n] 						;
. 								{return yytext[0];}

%%

int yywrap(void) {
	return 1;
}
