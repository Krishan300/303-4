#include<stdio.h>
#include<unistd.h>
#include<stdlib.h>
#include"support.h"

/* help() - Print a help message. */
void help(char *progname)
{
	printf("Usage: %s\n", progname);
	printf("(This is just a demonstration of the traditional way\n");
	printf(" to use .so filed)\n");
}

/* declare the hello() function that lives in a shared library */
extern void *hello(void* param);
extern struct team_t* ucase(struct team_t* oteam);
void check(struct team_t* oteam)
{
	if((strcmp("", oteam->name1) == 0) || (strcmp("", oteam->email1) == 0))
	{
		printf("Please fill in the team struct in team.c\n");
		exit(1);
	}
	if((strcmp("", oteam->name2) == 0) || (strcmp("", oteam->email2) == 0))
	{
		printf("Please fill in the team struct in team.c\n");
		exit(1);
	}
	if((strcmp("", oteam->name3) == 0) || (strcmp("", oteam->email3) == 0))
	{
		printf("Please fill in the team struct in team.c\n");
		exit(1);
	}
	printf("Student 1 : %s\n", oteam->name1);
	printf("Email 1   : %s\n", oteam->email1);
	printf("Student 2 : %s\n", oteam->name2);
	printf("Email 2   : %s\n", oteam->email2);
	printf("Student 3 : %s\n", oteam->name3);
	printf("Email 3   : %s\n", oteam->email3);
	printf("\n");
}
/* main() - The main routine parses arguments and invokes hello */
int main(int argc, char **argv)
{
	/* for getopt */
	long opt;

	/* run a student name check */
	check_team(argv[0]);

	/* parse the command-line options. For this program, we only support */
	/* the parameterless 'h' option, for getting help on program usage.  */
	while((opt = getopt(argc, argv, "h")) != -1)
	{
		switch(opt)
		{
		case 'h': 	help(argv[0]); 	break;
		}
	}

	hello(NULL);

	/* TODO: execute the new function "ucase" that you added to libpart1.c */
	struct team_t* oteam;
	oteam=ucase(&team);
	check(oteam);
	free(oteam->name1);
	free(oteam->name2);
	free(oteam->name3);
	free(oteam->email1);
	free(oteam->email2);
	free(oteam->email3);
	free(oteam);
	oteam->name1=NULL;
	oteam->name2=NULL;
	oteam->name3=NULL;
	oteam->email1=NULL;
	oteam->email2=NULL;
	oteam->email3=NULL;
	oteam=NULL;
	return 0;
}
