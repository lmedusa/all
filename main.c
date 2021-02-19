/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: lmedusa <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/12/04 23:12:35 by lmedusa           #+#    #+#             */
/*   Updated: 2020/12/04 23:12:37 by lmedusa          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libasm.h"

#include <stdio.h>
#include <string.h>
#include <fcntl.h>
#include <sys/types.h>
#include <sys/stat.h>

int		main()
{
	char	*dst;
	int		size;
	int		rd;
	int		fd;

	dst = NULL;
	if (!(dst = malloc(1024)))
		return (0);
	size = ft_strlen("Hello peer, lets me tell you amazing story about NASM!");
	fd = open("./libasm.h", O_RDONLY);
	rd = ft_read(fd, dst, 1024);
	ft_write(1, dst, ft_strlen(dst));
	ft_write(1, "\n\n\n", 3);
	free(dst);
	dst = malloc(sizeof(char) * size + 1);
	printf("STRLEN RESULT: %d\n", size);
	printf("STRDUP RESULT: %s\n", ft_strdup("Hello peer, lets me tell you amazing story about NASM!"));
	printf("STRCPY RESULT: %s\n", ft_strcpy(dst, "Hello peer, lets me tell you amazing story about NASM!"));
	free(dst);
	return (0);
}
