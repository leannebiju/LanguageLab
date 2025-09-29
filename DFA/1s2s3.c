//C program to implement a DFA for string 1*2*3

#include <stdio.h>
#include <string.h>

void main()
{
	char input[100];
	int state = 0;
	printf("Enter string , alphabet={1,2,3} : ");
	scanf("%s", input);
	
	for(int i = 0; i<strlen(input); i++)
	{
		char c = input[i];
		
		switch(state)
		{
			case 0: if(c=='1')
				state = 0;
				else if(c=='2')
				state = 1;
				else if(c=='3')
				state = 2;
				else
				state = -1;
				break;
			case 1: if(c=='2')
				state = 1;
				else if(c=='3')
				state = 2;
				else
				state = -1;
				break;
			case 2: state = -1;
				break;
			default : state = -1;
			
		}
		
	}
	
	if(state == 2)
		printf("Valid String\n");
	else 
		printf("Invalid String\n");
	
}
