NAME	=	LibASM

SRC	=

CC	=	nasm

CFLAGS	=	-elf64

INCLUDES	=	includes/

SRC_DIR	=	srcs/

BUILD	=	.build/

all:	$(NAME)

$(BUILD):
	@mkdir -p $@

$(NAME):	$(BUILD) $(OBJ)
	ld $(OBJ) -o $@

$(BUILD)%.o: $(SRC_DIR)%.s
	$(CC) $(CFLAGS) -c $< -o $@ -I $(INCLUDES)

clean:
	rm -rf $(BUILD)

fclean:	clean
	rm -rf $(NAME)

re: fclean all

.PHONY: re all fclean clean
