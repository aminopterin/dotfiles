#!/usr/bin/env bash

# Filename: edit_text.sh
# Author: Aminopterin (Tzu-Yu Jeng)
# Date: Feb. 2017
# Description: To call `TextEdit.app` to open file as plain text.
# Requirement: That `TextEdit.app` be installed (which was shipped with Mac).

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 

# If no argument is provided:
if [[ "$#" -eq 0 ]]
then
   echo "No arguments supplied. 1 or 2 expected, 0 present. Stop." > /dev/stderr
   exit 1
fi

for f in "$@"
do
   if [[ ! -f "${f}" ]]
   then
      echo "File ${f} does not exist. Stop."
      exit 1
   fi
done

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 

# To open `foo` as pure text with TextEdit with `TextEdit foo`.
# `-a` opens an application; `&` opens the process in background.

APPLICATION=TextEdit

set -x
open -a "${APPLICATION}" "$@"
{ set +x; } 2>/dev/null
