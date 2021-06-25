#!/usr/bin/env bash
##
## EPITECH PROJECT, 2021
## Untitled (Workspace)
## File description:
## test
##

cyanclair='\e[1;36m'
vertclair='\e[1;32m'
vertfonce='\e[0;32m'
rougeclair='\e[1;31m'
rougefonce='\e[0;31m'
violetclair='\e[1;35m'
rose='\e[1;31m'
bleufonce='\e[0;34m'
bleuclair='\e[1;34m'
grisclair='\e[0;37m'
jaune='\e[1;33m'
blanc='\e[1;37m'

testoutput()
{
    ./$1 $2 &> data
    if [[ $? == $3 ]]
    then
        echo -e "${vertfonce} \t\tTest output $4 \E[0m \e[90m\e[1mPASSED\e\e[0m"
    else
        echo -e "${rougefonce} \t\tTest output $4 (expected $3) \e[0m \e[41mNOT PASSED\E[0m"
    fi
    rm -f data
}

testdisplay()
{
    ./$1 $2 &> data
    diff -q data $3 &>/dev/null
    if [[ $? == $4 ]]
    then
        echo -e "\E[0;32m \t\tTest display $5 \E[0m \e[90m\e[1mPASSED\e\e[0m"
    else
        echo -e "\E[0;31m \t\tTest display $5 \e[0m \e[41mNOT PASSED\E[0m"
        echo -e "${violetclair}\t\tDo you want to see diff? (y/n)${blanc}"
        read answer
        if [ $answer = "y" ]
        then
            diff data $3
        fi
    fi
    rm -f data
}

echo -e "\E[0m \e[90m\e[1m PROJECT TEST BASE, FUNCTIONAL TESTS \e\e[0m"
echo -e "\E[0m \e[90m\e[1m \tOUTPUT TEST \e\e[0m"
testoutput "prog" "-h" "0" "usage"
echo -e "\E[0m \e[90m\e[1m \tDISPLAY TEST\e\e[0m"
testdisplay "prog" "-h" "tests/output/usage" "0" "test display usage"