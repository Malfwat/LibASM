NAME	=	globalbankster

SRC	=	Account.cpp\
		tests.cpp

CC	=	c++

CFLAGS	=	-Wall -Wextra -Werror -MMD -g3

INCLUDES	=	includes/

BUILD	=	.build/

OBJ	=	$(addprefix $(BUILD), $(SRC:.cpp=.o))

DEPS	=	$(OBJ:.o=.d)

all:	$(NAME)

$(BUILD):
	@mkdir -p $@

$(NAME):	$(BUILD) $(OBJ)
	$(CC) $(OBJ) -o $@

$(BUILD)%.o:	%.cpp Makefile
	$(CC) $(CFLAGS) -c $< -o $@ -I $(INCLUDES)

clean:
	rm -rf $(BUILD)

fclean:	clean
	rm -rf $(NAME)

re: fclean all

.PHONY: re all fclean clean

-include $(OBJ:.o=.d)

