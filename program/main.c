#include "header.h"

int main(int ac, char **av)
{
	int i ;

	if(ac < 2)
	{
		write(2, "need more arguments\n", 20);
		return 1;
	}
	i=1;
	while(av[i])
	{
		ft_print(av[i++]);
		write(1, " ", 1);
	}
	write(1, "\n", 1);
	return 0;
}
