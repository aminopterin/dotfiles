#!/usr/bin/env bash

# Filename: recursively_rename.sh
# Author: Aminopterin (Tzu-Yu Jeng)
# Date: Feb. 2017
# Description: With `RecursivelyRename foo bar`, to substitute `bar` for
#    all substring `foo` occurring in filenames in the the current 
#    directory and all subdirectories (including directory names).
# Requirement: That the Perl-based utility `rename` be installed; to do so use
# `brew install rename`. And that `EXT_BIN` be defined in the calling script.

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 

# `rename` options: `-S` for "substitute all".

# The fullname of source is saved as `full_src`.
# The basename of binary is saved as `bare_bin`.

# Note that `EXT_BIN` need to be defined in advance!
# To check number of arguments.
# If no. of arguments equals (`-eq`) 0:
if [[ "$#" -eq 0 ]]
then
   echo "No arguments supplied. 1 or 2 expected, 0 present. Stop." > /dev/stderr
   exit 1

# If no. of arguments is strictly greater than (`-gt`) 2:
elif [[ "$#" -gt 2 ]]
then
   echo "Too many arguments. 1 or 2 expected, $# present. Stop." > /dev/stderr
   exit 1

else
   # To set source name to be the 1st argument.
   full_src="$1"
fi

# To replace extension of source with that of binary.
if [[ "$#" -eq 1 ]]
then
   bare_bin="${full_src%%.*}"

# To set binary name to be the 2nd argument stripped of extension.
elif [[ "$#" -eq 2 ]]
then
   if [[ "$2" == *"\."* ]]
   then
      echo "Superfluous extension in filename $2 will be stripped." > /dev/stderr
   fi

   bare_bin=$2
   bare_bin="${bare_bin%%.*}"
fi

# `rename` options: (Keep them ordered as such! Do not rearrange!)
options=(
      --subst-all "${string_old}" "${string_new}"

)

