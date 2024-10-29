CC = gcc
NASM = nasm
AR = ar
NASMFLAGS = -f elf64
CFLAGS = -Wall -Wextra -Werror

NAME = libasm.a

C_SOURCES := $(wildcard *.c)
ASM_SOURCES := $(wildcard *.s)
BONUS_SOURCES := $(wildcard *_bonus.c)

OBJECTS := $(patsubst %.c, %.o, $(C_SOURCES)) $(patsubst %.s, %.o, $(ASM_SOURCES)) $(patsubst *_bonus.c, %.o, $(BONUS_SOURCES))

all: $(NAME)

$(NAME): $(OBJECTS)
	@$(AR) rcs $@ $^

%.o: %.c
	@$(CC) $(CFLAGS) -c $< -o $@

%.o: %.s
	@$(NASM) $(NASMFLAGS) $< -o $@

clean:
	@rm -f $(OBJECTS)

fclean: clean
	@rm -f $(NAME)

re: fclean all

test: main.c $(NAME)
	@$(CC) -o libasm main.c -L. -lasm

bonus: $(patsubst %.c, %.o, $(BONUS_SOURCES))
	@$(AR) rcs $(NAME) $^

.PHONY: all clean fclean re bonus
