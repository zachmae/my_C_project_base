##
## EPITECH PROJECT, 2020
## Makefile
## File description:
## Makefile
##

# ///// C variable /////

CFLAGS	+=	-Werror -Wextra -I./include

# ///// Path /////

IDIR	=	include

SDIR	=	sources

TDIR	=	tests

# ///// SRC /////

SRC		=	\

MAIN	=	$(SDIR)/main.c

OBJ		=	$(SRC:.c=.o) \
			$(MAIN:.c=.o)

# ///// Other var /////

NAME	=	prog

LIBFLAG	=	-L./lib -lmy


# ///// Rules /////

all: $(NAME)

$(NAME): $(OBJ)
	@make -C lib/my
	gcc -o $(NAME) $(OBJ) $(CFLAGS) $(LIBFLAG)

clean:
	@make -C lib/my clean
	rm -f $(OBJ)

fclean: clean
	@make -C lib/my fclean
	rm -f $(NAME)

re: lib_include fclean $(NAME)

tests_run:

.PHONY: all clean fclean re tests_run
