	// Program to copy one file contents to another 
	
%{
#include <stdio.h>
FILE *opfile;
%}

%%
. {fputc(yytext[0], opfile);}
\n {fputc('\n',opfile);}
%%

int main(int argc, char** argv)
{if(argc!=3)
{printf("Usage : ./a.out <input_file> <output_file>\n");
return 1;
}
FILE *ipfile = fopen(argv[1], "r");
if(!ipfile)
{perror("Input File Error");
return 1;
}
opfile = fopen(argv[2], "w");
if(!opfile)
{perror("Output File Error");
fclose(ipfile);
return 1;
}
yyin = ipfile;
yylex();
printf("File copied\n");
fclose(ipfile);
fclose(opfile);
return 0;
}
