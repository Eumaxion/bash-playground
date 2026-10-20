NAME = test

SRC = main.c ft_print.c  ft_strlen.c

OBJ = $(SRC:.c=.o)

CC = cc

CFLAGS = -Wall -Werror -Wextra

R7M = rm -rf

all: $(NAME) 

$(NAME): $(OBJ)
	@$(CC) $(CFLAGS) $(OBJ) -o $(NAME)
	@echo "Compilation done"

%.o:%.c
	@$(CC) $(CFLAGS) -c $< -o  $@

clean:
	@$(RM) $(OBJ)
	@echo "OBJ cleaned"

fclean: clean
	@rm $(NAME)
	@echo "PROGRAM cleaned"

re: fclean all
	@echo "Rebuided"
