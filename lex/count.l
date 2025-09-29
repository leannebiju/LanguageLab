	// Program to count the number of keywords, identifiers, words and operators

%{
#include<stdio.h>
int id = 0, key = 0, words = 0, op = 0;
%}
%%
for|if|while|do|void|int|double|float|printf {key++; words++;}
"+"|"-"|"*"|"/"|"=" {op++; words++;}
[a-zA-Z_][a-zA-Z0-9_]* {id++; words++;}
[0-9]+ {words++;}
[0-9][A-Za-z_0-9]* {words++;}
[ \t\n]+ ;
. ;
%%
int main(void)
{yylex();
printf("id : %d\n", id);
printf("keywords : %d\n", key);
printf("words : %d\n", words);
printf("operators : %d\n", op);
return 0;
}