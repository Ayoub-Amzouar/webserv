# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mel-hadj <mel-hadj@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/06/04 13:00:30 by mel-hadj          #+#    #+#              #
#    Updated: 2022/06/08 13:03:18 by mel-hadj         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = webserv
CC = c++ -std=c++98
FLAGS = -Wall -Wextra -Werror
RM = rm -rf

DIR_SRCS = ./srcs/

HEADERS = ./headers/webserv.hpp
SRC = parsing/file_parsing.cpp webserv.cpp parsing/check_errors.cpp  parsing/utils.cpp socket/socket.cpp \
	  parsing/request_parsing.cpp

SRCS =			$(addprefix $(DIR_SRCS), $(SRC))

all : $(NAME)

$(NAME) : $(SRCS)  $(HEADERS)
			@echo "compiling.."
			@$(CC) $(FLAGS) $(SRCS) -o $(NAME)
			@echo "Done."

clean :
			@echo "cleaning.."

fclean :  clean 
			@$(RM) $(NAME)

re:				fclean all
			

.PHONY:			all, clean, fclean, re