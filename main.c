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

    //ft_write:
    ft_write(1, "lol\n", 4);
    write(1, "lol\n", 4);

    return 0;
}