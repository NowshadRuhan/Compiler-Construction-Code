#include<stdio.h>
#include<string.h>
void suffix(char ch1[200], int j)
{

    int n = j,i;
    while(n>=0)
    {
        for(i=n; i<=j; i++)
        {
            printf("%c", ch1[i]);
        }
        n--;
        printf("\n");

    }

}

int main()
{
    while(1)
    {
        char ch[200];
        printf("Enter the string : ");
        scanf("%s", ch);
        int str = strlen(ch);
        suffix(ch, str);
    }
}

