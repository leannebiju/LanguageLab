//C program to implement a DFA for string of alphabet {a,b,c} with substring abc

#include <stdio.h>
#include <string.h>

void main()
{
	char input[100];
	int state = 0;
	printf("Enter string , alphabet={a,b,c} : ");
	scanf("%s", input);
	
	for(int i = 0; i<strlen(input); i++)
	{
		char c = input[i];
		
		switch(state)
		{
			case 0: if(c=='a')
				state = 1;
				else if(c=='b' || c=='c')
				state = 0;
				else
				state = -1;
				break;
			case 1: if(c=='a')
				state = 1;
				else if(c=='b')
				state = 2;
				else if(c=='c')
				state = 0;
				else
				state = -1;
				break;
			case 2: if(c=='a')
				state = 1;
				else if(c=='b')
				state = 0;
				else if(c=='c')
				state = 3;
				else
				state = -1;
				break;
			case 3: if(c=='a'||c=='b'||c=='c')
				state = 3;
				else 
				state = -1;
				break;
			default : state = -1;
			
		}
		
	}
	
	if(state == 3)
		printf("Valid String\n");
	else 
		printf("Invalid String\n");
	
}
