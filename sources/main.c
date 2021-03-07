/*
** EPITECH PROJECT, 2021
** main
** File description:
** main function
*/

#include "../include/prog.h"

int error_handle(int ac, char **av)
{
    if (ac == 0) {
        write(2, "read usage.\n", 13);
        return 84;
    }
    return 0;
}

int print_usage(int ac, char **av)
{
    if (ac == 2)
        if (my_strcmp(av[1], "-h") == 0) {
            my_printf("USAGE\n\t./executable\n");
            my_printf("DESCRIPTION\n\tsome description\n");
            return 1;
        }
    return 0;
}

int main(int ac, char **av)
{
    if (print_usage(ac, av) == 1)
        return 0;
    if (error_handle(ac, av) == 84)
        return 84;
    return 0;
}