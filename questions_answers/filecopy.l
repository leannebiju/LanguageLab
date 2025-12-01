%{
#include <stdio.h>
FILE *op;
%}

%%

. {fputc(yytext[0], op);}
\n {fputc('\n', op);}

%%

int main(int argc, char** argv){
	if(argc!=3){
		printf("Correct Usage : ./a.out <inputfile> <outputfile>\n");
		return 1;
	}
	
	FILE *ip = fopen(argv[1], "r");
	
	if(!ip){
		perror("Input File Error\n");
		return 1;
	}
	
	op = fopen(argv[2],"w");
	
	if(!op){
		perror("Output File Error\n");
		fclose(ip);
		return 1;
	}
	
	yyin = ip;
	yylex();
	printf("File Copied\n");	
	fclose(ip);
	fclose(op);	
	return 0;
	
}
