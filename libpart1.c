#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#include<ctype.h>
#include"support.h"

/* hello() - print some output so we know the shared object loaded.
 *
 * The function signature takes an untyped parameter, and returns an untyped
 * parameter. In this way, the signature *could* support any behavior, by
 * passing in a struct and returning a struct. */
void *hello(void *input) //parameter type is void * type
{
	printf("hello from a .so\n");
	return NULL;
}
char* Mytoupper(char* a)
{
	int i=0;
	while(*(a+i)!='\0')
	{
		*(a+i)=toupper(*(a+i));
		i++;
	}
	return a;
}

struct team_t* ucase(struct team_t* oteam)
{
	struct team_t* team_temp=NULL;
	team_temp=(struct team_t*)malloc(sizeof(struct team_t));
	team_temp->name1=(char *)malloc(strlen(oteam->name1)+1);
	team_temp->email1=(char *)malloc(strlen(oteam->email1)+1);
	team_temp->name2=(char *)malloc(strlen(oteam->name2)+1);
	team_temp->email2=(char *)malloc(strlen(oteam->email2)+1);
	team_temp->name3=(char *)malloc(strlen(oteam->name3)+1);
	team_temp->email3=(char *)malloc(strlen(oteam->email3)+1);
	strcpy(team_temp->name1,oteam->name1);
	strcpy(team_temp->email1,oteam->email1);
	strcpy(team_temp->name2,oteam->name2);
	strcpy(team_temp->email2,oteam->email2);
	strcpy(team_temp->name3,oteam->name3);
	strcpy(team_temp->email3,oteam->email3);
	Mytoupper(team_temp->name1);
	Mytoupper(team_temp->email1);
	Mytoupper(team_temp->name2);
	Mytoupper(team_temp->email2);
	Mytoupper(team_temp->name3);
	Mytoupper(team_temp->email3);
	return team_temp;
}

