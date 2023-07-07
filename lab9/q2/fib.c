#include <stdio.h>
#include <stdlib.h>

void computeFibs(int *fibs, int length){
  int i = 0;
  fibs[0] = 0;
  fibs[1] = 1;
  for( ; i < length-2; ++i){
    fibs[i+2] = fibs[i] + fibs[i+1];
  }
}

int sumFibs(int *fibs, int length){
  int j = 0;
  int sum = 0;
  for( ; j < length-1; ++j){
    sum = fibs[j];
  }
  return sum;
}

int main(int argc, char *argv[] ){
  if (argc !=2 ){
    printf("Expected one non-negative number less than 30\n");
    return 0;
  }
  int length = atoi(argv[1]);
  if (length < 0 || length > 29){
    printf("Expected one non-negative number less than 30\n");
    return 0;
  }

  int *fibs = malloc ( length * sizeof(int) );
  for (int i=0; i<length; ++i){
    fibs[i]=0;
  }

 computeFibs(fibs,length);
 printf("%d\n",sumFibs(fibs,length));
 
 free(fibs);
}
