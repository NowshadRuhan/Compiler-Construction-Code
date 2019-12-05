#include<stdio.h>
#include<string.h>
void prefix(char ch1[200], int j)
{

    int n = 1,i;
    while(n<j)
    {
        for(i=0; i<n; i++)
        {
            printf("%c", ch1[i]);
        }
        n++;
        printf("\n");

    }
}
int main()
{
    while(1)
    {
        char ch[200];
        printf("Enter the string : ");
        gets(ch);
        //scanf("%s", ch);
        int str = strlen(ch);
        prefix(ch, str);


    }
}


