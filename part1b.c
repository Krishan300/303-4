#include<stdio.h>
#include<unistd.h>
#include<stdlib.h>
#include<dlfcn.h>
#include<string.h>
#include"support.h"

/* load_and_invoke() - load the given .so and execute the specified function */
void load_and_invoke(char *libname, char *funcname)
{
	/* TODO: complete this function */
	void *handle;
    int (*func)(int, int);
    void *(*hello)(void *);
    char *error;

    handle = dlopen(libname, RTLD_NOW);
    if (handle == NULL)
    {
    fprintf(stderr, "Failed to open libaray %s error:%s\n", libname, dlerror());
    exit(EXIT_FAILURE);
    }
    hello = dlsym(handle, funcname);
    if ((error = dlerror()) != NULL)  
    {
	    fprintf(stderr, "%s\n", error);
	    exit(EXIT_FAILURE);
    }
    else
   	{
   		hello(NULL);
    	printf("execute hello success\n");
   	}
   	dlclose(handle);
   	if ((error = dlerror()) != NULL)  
    {
	    fprintf(stderr, "%s\n", error);
	    exit(EXIT_FAILURE);
    }
    exit(EXIT_SUCCESS);
}

/* help() - Print a help message. */
void help(char *progname)
{
	printf("Usage: %s [OPTIONS]\n", progname);
	printf("Load the given .so and run the requested function from that .so\n");
	printf("  -l [string] The name of the .so to load\n");
	printf("  -f [string] The name of the function within that .so to run\n");
}

/* main() - The main routine parses arguments and invokes hello */
int main(int argc, char **argv)
{
	/* for getopt */
	long opt;
	char libname[20];
	char funcname[20];
	/* run a student name check */
	check_team(argv[0]);

	/* parse the command-line options. For this program, we only support */
	/* the parameterless 'h' option, for getting help on program usage.  */
	while((opt = getopt(argc, argv, "hl:f:")) != -1)
	{
		switch(opt)
		{
			case 'h':	help(argv[0]); 	break;
			case 'l': strcpy(libname,optarg); break;
			case 'f': strcpy(funcname,optarg); break;
			default : help(argv[0]);  break;
		}
	}
	
	/* call load_and_invoke() to run the given function of the given library */
	if(strcmp(libname,"")==0||strcmp(funcname,"")==0)
	{
		load_and_invoke(libname, funcname);
	}
	exit(0);
}

