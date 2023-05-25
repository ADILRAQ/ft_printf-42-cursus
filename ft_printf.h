/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: araqioui <araqioui@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/11/03 17:58:25 by araqioui          #+#    #+#             */
/*   Updated: 2022/11/05 20:17:00 by araqioui         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_PRINTF_H
# define FT_PRINTF_H

# include <stdio.h>
# include <stdarg.h>
# include <limits.h>

int		ft_printf(const char *str, ...);
int		ft_putpointer(unsigned long nb);
void	ft_put_hex(int c, int *i, unsigned int nb);

#endif