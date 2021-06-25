##
## EPITECH PROJECT, 2020
## Makefile
## File description:
## Makefile
##

NAME	=	prog

CC =		gcc
CFLAGS	=	-Werror -Wextra
CPPFLAGS += 	-I./include

SDIR	=	sources

SRC		=	\

MAIN	=	$(SDIR)/main.c

OBJ		=	$(SRC:.c=.o) \
			$(MAIN:.c=.o)


LIBFLAG	=	-L./lib -lmy

all: $(NAME)

$(NAME): $(OBJ)
	@make -C lib/my
	$(CC) -o  $(NAME) $(OBJ) $(CFLAGS) $(CPPFLAGS) $(LIBFLAG)

clean:
	@make -C lib/my clean
	$(RM) $(OBJ)

fclean: clean
	@make -C lib/my fclean
	$(RM) $(NAME)

re: fclean $(NAME)

debug:	CFLAGS += -g

debug: ${OBJ}
	@make -C lib/my debug
	${CC} -o $(NAME) $(OBJ) $(CFLAGS) $(CPPFLAGS) $(LIBFLAG)

.PHONY: all clean fclean re debug
