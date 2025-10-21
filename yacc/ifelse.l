%{
#include "y.tab.h"
%}

%%

"if" {return IF;}
"else" {return ELSE;}
[0-9]+ {return NUM;}
[a-zA-Z]+ 	{return VAR;}
"==" 		{return EQ;}
"!=" 		{return NE;}
">=" 		{return GE;}
"<=" 		{return LE;}
">" 		{return GT;}
"<" 		{return LT;}
[ \t\n] 	;
. 			{return yytext[0];}

%%

int yywrap(void) {
	return 1;
}
