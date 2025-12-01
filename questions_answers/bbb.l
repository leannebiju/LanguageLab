%{
#include <stdio.h>
int c = 0, s = 0, ch = 0, w = 0, l = 0, bbb = 0;
%}

%%

"bbb" {bbb++; ch+=3; s+=3;}
[a-z] {s++; ch++;}
[A-Z] {c++; ch++;}
[ \t]+ {w++;}
\n {l++; w++;}
. {ch++;}

%%

int main(void){
	yylex();
	printf("No of capital letters : %d\n", c);
	printf("No of small letters : %d\n", s);
	printf("No of bbb : %d\n", bbb);
	printf("No of words : %d\n", w);
	printf("No of lines : %d\n", l);
	printf("No of characters : %d\n", ch);
	return 0;
}
