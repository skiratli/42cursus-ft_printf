NAME=libftprintf.a
SRCS=ft_printf.c printf_utils.c
OBJS=$(SRCS:.c=.o)


CC=gcc
FLAGS=-Wall -Wextra -Werror


all: $(NAME)

$(NAME): $(OBJS)
	ar rcs $(NAME) $(OBJS)

%.o: %.c
	$(CC) $(FLAGS) -c ft_printf.c
	$(CC) $(FLAGS) -c printf_utils.c

clean:
	rm -f $(OBJS)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re
