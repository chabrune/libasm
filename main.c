#include "libasm.h"

int main(int argc, char **argv)
{
    (void)argc;
    (void)argv;

    // strlen :
    const char* str = "Je m'presente je m'appelle henri";
    printf("--ft_strlen--\nLen strlen : %zu\nLen ft_strlen : %zu\n\n", strlen(str), ft_strlen(str));

    //strcpy :
    char dest[strlen(str) + 1];
    printf("--ft_strcpy--\nstrcpy : \nSrc : %s\nDest : %s\n\n", str, strcpy(dest, str));
    printf("ft_strcpy : \nSrc : %s\nDest : %s\n\n", str, ft_strcpy(dest, str));

    //strcmp:
    printf("--ft_strcmp--\nstrcmp : %d\n", strcmp("0x00", "0xff"));
    printf("ft_strcmp : %d\n", ft_strcmp("0x00", "0xff"));

    printf("strcmp : %d\n", strcmp("0xff", "0x00"));
    printf("ft_strcmp : %d\n", ft_strcmp("0xff", "0x00"));

    printf("strcmp : %d\n", strcmp("0x00", "0x00"));
    printf("ft_strcmp : %d\n\n", ft_strcmp("0x00", "0x00"));

    //ft_write
    printf("--ft_write--\n");
    ft_write(1, "lol\n", 4);
    ft_write(-1, "lol\n", 4);
    printf("Error errno with bad fd : %d\n", errno);

    //ft_read
    printf("\n--ft_read--\n");
    int fd = open("file.txt", O_RDONLY);
    if (fd == -1)
    {
        perror("Open fail");
        return 1;
    }
    char buffer[256];
    ssize_t ret = ft_read(fd, buffer, 256);
    if (ret == -1)
    {
        perror("ft_read failed");
        close(fd);
        return 1;
    }
    buffer[ret] = '\0'; // Null-terminate the string
    printf("Buffer read : %s\nReturn value : %zd\n", buffer, ret);
    close(fd);

    ret = ft_read(-1, buffer, 256);
    printf("Error errno with bad fd : %d\nReturn value :  %zd\n", errno, ret);

    char *src = "Bonjour";
    char *dup1 = ft_strdup(src);
    char *dup2 = strdup(src);
    printf("ft_strdup : %s\nstrdup : %s", dup1, dup2);
	printf("\n%d\n", ft_atoi_base("256", "0123456789"));
	// printf("%d", ft_atoi_base_c(" ---+--+1234ab567", "0123456789"));

}