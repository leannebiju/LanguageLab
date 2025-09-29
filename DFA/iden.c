//program to implement DFA for an identifier in c
//can also use ASCII from (65 to 90), (97 to 122), (48 to 57) and 95
#include<stdio.h>
#include<string.h>

void main(){
	char input[100];
	int state = 0;
	printf("Enter identifier name : ");
	scanf("%[^\n]", input);
	if((strcmp(input, "for")==0) || (strcmp(input, "if")==0) || (strcmp(input, "int")==0) || (strcmp(input, "do")==0)){
		printf("Keyword!");
		state = -1;
	}
	if(state == 0)
		for(int i = 0; i<strlen(input); i++){
			char c = input[i];
			switch(state){
				case 0: if((c>='a'&&c<='z') || ((c>='A'&&c<='Z')) || c=='_')
							state = 1;
						else
							state = -1;
						break;
				case 1: if((c>='a'&&c<='z') || ((c>='A'&&c<='Z')) || c=='_' || (c>='0' && c<='9'))
							state = 1;
						else
							state = -1;
						break;
				default: state = -1;
			}
		}
	if(state == 1)
		printf("Valid identifier\n");
	else
		printf("Invalid identifier\n");
}
