# Templates, Configuration files, and Related Notes
*Mostly Dec. 2016 to Jan. 2017*

This repo backs up templates I commonly use, settings for some programs, and several related notes.

## My `.vimrc`

The `.vimrc` is a plain text file that holds desired settings to be initialized in Vim. (Here `rc` means "run commands", a phrase originated in Unix-like systems.) It specifies read-and-write settings, search-and-replace options, self-defined shortcuts, user-implemented functions, and more. If saved in the current user's home, it is read in runtime, and applied by, Vim.

Two notes, "End-of-line characters", and "The 'solarized' and other color schemes for Vim", are to be found in this repo.

## My `.bashrc` and `.bash_profile`

The `.bash_profile` consists only one line, namely one that sources `.bashrc` if the latter exists.

The `.bashrc` includes all my custom appearances, shortcuts, functions, variables, and more, for the Bash shell.

For further explanation, see a note I wrote saved in this repo, "Difference between `.bashrc` and `.bash_profile`".

## My LaTeX template for Latin languages

The `template-Latin.tex` is the LaTeX template I use for my writings, either personal or scholastic, but without Chinese. It contains custom abbreviations, the load of important packages, preferred appearances, self-implemented functions and more.

The LaTeX documents based on this template is intended to be compiled into `.pdf` format by the `pdflatex` script, which is a wrapper of the compiler `pdftex`. The `pdflatex` is already included in [MacTeX](http://www.tug.org/mactex/) distribution, which I installed on my MacBook Air.

I set another alias `Pdflatex` to call a short script I wrote with specification of options. To compile with that, enter `Pdflatex <file-name>`. 

## My LaTeX template for Chinese, Japanese, and Korean

The `template-CJK.tex` is the LaTeX template I use for Chinese writings. It is mostly taken from the above mentioned template of Latin languages, but rid of unnecessary packages or what packages I observed to have resulted conflict. The `xeCJK` package is included to facilitate typesetting of Chinese.

The XeLaTeX documents based on this template is intended to be compiled into `.pdf` format by the `xelatex` script, which is a wrapper of the compiler `xetex`. The `xelatex` is already included in [MacTeX](http://www.tug.org/mactex/) distribution, which I installed on my MacBook Air.

I set another alias `Xelatex` to call a short script I wrote with specification of options. To compile with that, enter `Xelatex <file-name>`. 

## The `pandoc` template I modified

The `pandoc` is a versatile document converter. For my purpose, I let `pandoc` generate a `.pdf` from a `.md` (Markdown). Here actually an intermediate LaTeX file was first prepared, and then one LaTeX engine is called; valid options are either `pdflatex`, `lualatex`, and `xelatex`. (Thus pandoc requires that engine be installed in advance). 

The `pandoc` has a default LaTeX template for that. We can `cat` that in the console output, with a prewritten command:

    pandoc -D latex > copy_default.latex

In case one need include other packages or define other commands, he or she only has to revise the template and specify its location. I have copied the modified template into this repo, by which anyone are able to re-compile my writings.

To reduce potential conflicts between packages and enhance portability, I have only included those absolutely necessary. For example, the `\mathscr` is commonly used, which requires `mathrsfs` package, and is thus called. And, as I write in Chinese, which requires `xelatex` engine, the `xeCJK` package is called.

I set another alias `Pandoc` to call a short script I wrote with specification of options. To compile with that, enter `Pandoc <file-name>`. 

## Makefiles and scripts

As mentioned above, 

When using them,

## A Script for update

The `.bash_profile`, `.bashrc`, and `.vimrc` are saved in my home (`~`) as they should be, and I update them when I feel like to. I also store the above-mentioned makefiles and shell scripts simply in my home. 

On the contrary, this repo is intended to be a passive backup of them, that is, I update the copies saved in home and copied them to the local repo from time to time, rather than directly update files in this repo. Furthermore, I shall protect files backed up by setting them to be only readable. Thus a short script, `update.sh`, that automates the mentioned action is included in this repo. 
