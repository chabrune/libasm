#ifndef __LIBASM_H__
#define __LIBASM_H__

#include <unistd.h>
#include <stdio.h>
#include <string.h>

extern int ft_strcmp(const char *s1, const char *s2);
extern size_t ft_strlen(const char *s);
extern char *ft_strcpy(char *dest, const char *src);
extern ssize_t  ft_write(int  fd,  const  void *buf, size_t count);

#endif