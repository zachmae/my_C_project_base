##
## EPITECH PROJECT, 2020
## Makefile
## File description:
## Makefile
##

CC = gcc -o
CFLAGS	+=	-Werror -Wextra
CPPFLAGS +=  -I./include
RM = rm -rf

IDIR	=	include

SDIR	=	sources

TDIR	=	tests

SRC		=	\

MAIN	=	$(SDIR)/main.c

OBJ		=	$(SRC:.c=.o) \
			$(MAIN:.c=.o)

NAME	=	prog

LIBFLAG	=	-L./lib -lmy

all: $(NAME)

$(NAME): $(OBJ)
	@make -C lib/my
	$(CC) $(NAME) $(OBJ) $(CFLAGS) $(LIBFLAG)

clean:
	@make -C lib/my clean
	$(RM) $(OBJ)

fclean: clean
	@make -C lib/my fclean
	$(RM) $(NAME)

re: fclean $(NAME)

.PHONY: all clean fclean re
