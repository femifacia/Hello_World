##
## EPITECH PROJECT, 2019
## Makefile
## File description:
##  Makefile
##

SRC	=	$(shell find ./ -name '*.asm')

UNIT_SRC	=	$(SRC)

OBJ	=	$(SRC:.asm=.o)

VAL_FLAG1	=	--track-origins=yes

VAL_FLAG2	=	--leak-check=full

VAL_FLAG3	=	--leak-cresolution=high

VAL_FLAG4	=	--track-fds=yes

VAL_FLAGS	=	$(VAL_FLAGS1) $(VAL_FLAGS2)

EXEC	=	hello_world.out

all:	$(EXEC)

$(EXEC):	$(OBJ)
	@echo -e "\e[05;01;34m=====COMPILATION DE L'EXECUTABLE=====\e[00;01;34m"
	ld -o $(EXEC) $(OBJ)

%.o:	%.asm
	@echo -e "\e[05;01;32m=====COMPILATION DES .ASM EN .O=====\e[00;01;32m"
	nasm -f elf64 $< -o $@ -g3
	#gcc -o $@ -c $< -g3

test_run:	$(UNIT_SRC)
		gcc -o unit_test $(UNIT_SRC) --coverage -lcriterion
		./unit_test
		gcovr --exclude ./tests
		gcovr --exclude ./tests --branches
deb:
	@echo -e "\e[05;01;36m=====COMPILATION EN MODE DEBUG =====\e[00;01;36m"
	gcc $(SRC) -g3
	@echo -e "\e[00;00m"

clean:
	@echo -e "\e[05;01;35m=====SUPPRESSION DES .O=====\e[00;01;35m"
	rm -f $(OBJ)

fclean:	clean
	@echo -e "\e[05;01;31m=====SUPPRESSION DE L'EXECUTABLE=====\e[00;01;31m"
	rm -f $(EXEC)

re: fclean all
