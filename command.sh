#!/bin/bash
# Command Line EFI Mounter
# (c) Copyright 2016 chris1111 
#
BOLD="\033[1m"
RED="\033[1;31m"
GREEN="\033[1;32m"
BLUE="\033[1;34m"
OFF="\033[m"

# Confirms if the script is being run as sudo
# if [ "$EUID" -ne 0 ]
#   then echo 'mountEFI: Please run as sudo'
#   exit
# fi

#
# Repository location
#
REPO=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )


echo "———————————————————————————————————————————————————————————————————————————————"

a=$(diskutil list | grep EFI )
a=$a"\n   2:                        EFI EFI2                    209.7 MB   disk1s1"
echo -e "$a";

result=$(echo -e "$a" | awk '{print $6}')

echo -e $result

result_arr=($result)

echo ${result_arr[0]}



# echo "———————————————————————————————————————————————————————————————————————————————"
# printf "Enter the Number of the partition follow by [ENTER]. (Exemple) ${RED}disk1s1${OFF}"

# echo "  "

# echo "                 ===== The choose Partition Will be Mounted! ====="
# echo "———————————————————————————————————————————————————————————————————————————————"

# read -p ": " target
# echo ${target}
# #diskutil mount ${target}


# echo "———————————————————————————————————————————————————————————————————————————————"
# echo "`tput setaf 7``tput sgr0``tput bold``tput setaf 26`Mounted. . . .`tput sgr0` `tput setaf 7``tput sgr0`" 
# echo "———————————————————————————————————————————————————————————————————————————————"
# Sleep 2	

