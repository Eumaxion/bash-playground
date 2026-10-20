#include <unistd.h>

int ft_strlen(char *str)
{
	int i = 0;
	if (!str)
		return (-1);
	while(str[i])
		i++;
	return (i);
}
