# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: araqioui <araqioui@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/11/05 18:55:39 by araqioui          #+#    #+#              #
#    Updated: 2022/11/06 10:45:48 by araqioui         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

CFLAGS = -Wall -Werror -Wextra
AR = ar rc
RM = rm -f

MAN_SRC = ft_printf ft_printf_utils \
		libft/ft_putchar libft/ft_putnbr \
		libft/ft_putstr libft/ft_strdup

MAN_OBJ = $(MAN_SRC:=.o)

all: $(NAME)

$(NAME): $(MAN_OBJ)
	$(AR) $(NAME) $(MAN_OBJ)

%.o: %.c ft_ptintf.h libft/libft.h
	cc $(CFLAGS) -c $<

clean:
	@$(RM) $(MAN_OBJ)

fclean: clean
	@$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re