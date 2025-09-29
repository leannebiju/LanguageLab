//C program to implement a DFA for string with 00 followed by 1

#include <stdio.h>
#include <string.h>

void main()
{
	char input[100];
	int state = 0;
	printf("Enter binary string : ");
	scanf("%s", input);
	
	for(int i = 0; i<strlen(input); i++)
	{
		char c = input[i];
		
		switch(state)
		{
			case 0: if(c=='0')
				state = 2;
				else if(c=='1')
				state = 1;
				else
				state = -1;
				break;
			case 1: if(c=='0')
				state = 2;
				else if(c=='1')
				state = 1;
				else
				state = -1;
				break;
			case 2: if(c=='0')
				state = 3;
				else if(c=='1')
				state = 1;
				else
				state = -1;
				break;
			case 3: if(c=='1')
				state = 1;
				else 
				state = -1;
				break;
			default : state = -1;
			
		}
		
	}
	
	if(state == 1 || state == 2)
		printf("Valid String\n");
	else 
		printf("Invalid String\n");
	
}
