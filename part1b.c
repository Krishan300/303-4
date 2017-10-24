#include<stdio.h>
#include<unistd.h>
#include<stdlib.h>
#include<dlfcn.h>
#include"support.h"


void load_and_invoke(char *libname, char *funcname)//ptr to func
{
	/* TODO: complete this function */
	void *handle; //
    int (*func)(int, int);
    void *(*hello)(void *); //void* --> return type; (void*) represents the parameter
    char *error; 

    handle = dlopen(libname, RTLD_NOW);//open dynamic library
    if (handle == NULL)
    {
    fprintf(stderr, "Failed to open libaray %s error:%s\n", libname, dlerror());
    exit(EXIT_FAILURE);
    }
    hello = dlsym(handle, funcname);//use this function from the library and pass this pointer to the function
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

	/* run a student name check */
	check_team(argv[0]);

	/* parse the command-line options. For this program, we only support */
	/* the parameterless 'h' option, for getting help on program usage.  */
	while((opt = getopt(argc, argv, "h")) != -1)
	{
		switch(opt)
		{
		case 'h':	help(argv[0]); 	break;
		}
	}

	/* call load_and_invoke() to run the given function of the given library */
	load_and_invoke("./libpart1.so", "hello");

	exit(0);
}

//in C++, dynamic for cout, don't need to re-implement cout to have endl, only need to
//dynamic library  (.so dynamic ).   (.a  static)
/* load_and_invoke() - load the given .so and execute the specified function */
