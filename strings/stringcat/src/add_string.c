/*
 * Ellis Nielsen
 * */


#include <stdio.h>
#include <stdlib.h>
#include <string.h>

extern void add_strings(char * line1, char * line2);


int main(void){
    char * line = (char *)malloc(sizeof(char)*50);
    char * line2 = (char *)malloc(sizeof(char)*50);
    char * hi = "Hi There! ";
    char * hi2 = "Hi There 2! ";
    memcpy(line, hi, strlen("Hi There! ")+1);
    memcpy(line2, hi2, strlen("Hi There 2! ")+1);
    add_strings(line, line2);
    printf("%s",line);
    return 0;
}