#! /usr/bin/env bash

# Filename: build_lualatex.sh
# Author: Aminopterin (Tzu-Yu Jeng)
# Date: Jan. 2017

# Description: To compile PDF document of several LaTeX projects using `lualatex`.
# Requirement: See the called script `run_lualatex.sh`.
# Variable(s) defined in advance: `DIR_TOP`

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 

# `DIR_TOP` should contain several LaTeX project directories
# that are intended to be compiled, and has a `main.tex` in it.

DIR_SCRIPTS="/Users/amino/templates_configs_scripts/scripts"
FULL_MAKER="share_tex_family.sh"
FULL_PROGRAM="run_lualatex.sh"

source "${DIR_SCRIPTS}/${FULL_MAKER}"
