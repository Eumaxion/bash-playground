#include "header.h"

int ft_print(char *str)
{
	if (!str)
		return (1);
	write(1, str, ft_strlen(str));
	return (0);
}
