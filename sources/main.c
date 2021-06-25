/*
** EPITECH PROJECT, 2021
** main
** File description:
** main function
*/

#include <stdbool.h>
#include "prog.h"
#include "const.h"
#include "my.h"

int error_handle(int ac, char **av)
{
    if (ac == 0) {
        my_puterror("read usage.\n");
        return ERROR;
    }
    return SUCCES;
}

bool print_usage(int ac, char **av)
{
    if (ac == 2 && my_strcmp(av[1], "-h") == 0) {
        my_printf("USAGE\n\t./executable\n");
        my_printf("DESCRIPTION\n\tsome description\n");
        return true;
    }
    return false;
}

int main(int ac, char **av)
{
    if (print_usage(ac, av) == true)
        return SUCCES;
    if (error_handle(ac, av) == ERROR)
        return ERROR;
    return SUCCES;
}
