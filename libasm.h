#ifndef __LIBASM_H__
#define __LIBASM_H__

#include <unistd.h>
#include <stdio.h>
#include <string.h>
#include <errno.h>
#include <stdlib.h>
#include <fcntl.h>

extern int ft_strcmp(const char *s1, const char *s2);
extern size_t ft_strlen(const char *s);
extern char *ft_strcpy(char *dest, const char *src);
extern ssize_t  ft_write(int  fd,  const  void *buf, size_t count);
extern ssize_t ft_read(int fd, void *buf, size_t count);
extern char *ft_strdup(const char *s);
extern int	ft_atoi_base(char *str, char *base);
int	ft_atoi_base_c(char *str, char *base);

#endif  