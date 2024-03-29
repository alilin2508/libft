NAME		= libft.a

SRCS		= ft_bzero.c \
			  ft_atoi.c \
			  ft_calloc.c \
			  ft_isalpha.c \
			  ft_isalnum.c \
			  ft_isprint.c \
			  ft_memccpy.c \
			  ft_memchr.c \
			  ft_memcmp.c \
			  ft_memcpy.c \
			  ft_isdigit.c \
			  ft_memset.c \
			  ft_strchr.c \
			  ft_strdup.c \
			  ft_isascii.c \
			  ft_strlen.c \
			  ft_strlcpy.c \
			  ft_strncmp.c \
			  ft_memmove.c \
			  ft_strnstr.c \
			  ft_toupper.c \
			  ft_strlcat.c \
			  ft_strrchr.c \
			  ft_tolower.c \
			  ft_substr.c \
			  ft_putchar_fd.c \
			  ft_putstr_fd.c \
			  ft_putendl_fd.c \
			  ft_putnbr_fd.c \
			  ft_itoa.c \
			  ft_strjoin.c \
			  ft_strmapi.c \
			  ft_split.c \
			  ft_strtrim.c \

BONUS		= ft_lstnew.c \
			  ft_lstadd_front.c \
			  ft_lstsize.c \
			  ft_lstlast.c \
			  ft_lstadd_back.c \
			  ft_lstdelone.c \
			  ft_lstclear.c \
			  ft_lstiter.c \
			  ft_lstmap.c \

OBJS = *.o

INCLS = includes

all:		$(NAME)

$(NAME):
			gcc -Wall -Wextra -Werror -c $(SRCS)
			ar rc $(NAME) $(OBJS)

bonus:
			gcc -Wall -Wextra -Werror -c $(BONUS) $(SRCS)
			ar rc $(NAME) $(OBJS)

clean:
			rm -rf $(OBJS)

fclean:		clean
			rm -f $(NAME)

re:			fclean all
