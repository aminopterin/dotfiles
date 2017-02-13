# Git Commands: A Memo
*Feb. 6, 2017*

Here is a slowly growing summary of Git commands I find helpful, with short explanations following them, addressed to the dear reader in second person. The reader may want to read "Setting up Git" first for relevant background.

I claim no intention to make it a complete table, even in the most rudimentary sense. What I have supposed to be useful, I summary and explain here, and what I have not, I do not. Again, I appreciate anyone to correct my misunderstandings, if any.

I use Mac OS (presently Sierra) on MacBook Air. I will then focus on Mac instructions, but Unix-like users shall find no difficulty in finding their counterpart. From now on, by convention, commands meant to be run in a Bash shell is prefixed with a `$` for clarity, as goes the tradition. If you don't know what that is, just open the Terminal.app, copy and paste whatever I quoted (without `$`), and hit the Return key.

Git commands require the current working directory set to be either the top directory or any subdirectory of it, except those inside `.git/`. There are workarounds if you really don't want to do this, but I guess it is safest just to always go (by `cd`) into the top directory. This will be assume true hereafter.

Before we continue, keep in mind that Git comes with a detailed manual. If you have any question of `fetch`, for example, open Git man pages by:

    $ git help fetch

Or equivalently, 

    $ git fetch --help

## To Commit and Push

### To Compare

Before committing, it is helpful to see what new work has been done. To show modification not added to the index, that is, differences between working tree and the files as was indexed:

    $ git diff

If new work has been added to the index, you can still compare the files as was index with latest commit in the local repo,

    $ git diff --staged

Instead, to compare a specific file in the working tree with the committed version of it in the local repo, say `README.md`,

    $ git diff HEAD README.md

where `HEAD` is a pointer to the latest commit.

### Navigating `diff` result

After any of these, you will see a new page that summarizes modified lines, and what is changed.

Navigation commands are identical to `less`, and similar to Vim. Hit `j`, `e` or `^e` to forward one line (where `^` stands for Control key). Hit `k`, `y`, or `^y` to backward one line. Hit `f` or `^f` to forward one window. Hit `b` or `^b` to backward one window. Hit `d` or `^d` to forward one-half window. Hit `u` or `^u` to backward one-half window. Hit `q` or `:q` to quit. 

### Updating the Index

If there are new files created or old files deleted, run this to update the index according to the present working tree:

    $ git add -A

The following does almost the same, except in that it ignores files in a newly created directory:

    $ git add .

### To Commit

Before you commit, you may want to see a short summary of what files are changed and deleted, with

    $ git status

To commit, use `git commit`. However a commit message is strongly recommended, which reminds you as well as other people what you have done. For example,

    $ git commit -m "Rename files using new convention"

Summarize your work concisely, within less than some 70 characters. If you cannot do this, you should have probably split your work into two or more commits. It is the tradition that, to save space, verbs in base form are used, and no period is there in the end.

You can modify your commit message even after you commit, with

    $ git commit --amend

Now, an editor opens, showing the commit message in the beginning, where you may revise it. This file is saved as `.git/COMMIT_EDITMSG`.

I find it useful to edit here because you don't have to backslash-escape special characters, which may occur in verbatim expressions. You can also add more explanatory lines below, separated from the title with a blank line. The status is shown again as commented lines to recapitulate changes for you.

### To View Commit Log

Afterwards, you can view the commit log with

    $ git log

The result shows commit IDs, authors, time stamps, and commit messages.

To make the log more concise and informative,

    $ git log --all --decorate --oneline --graph

The names of option are pretty explanatory. Mnemonic: "a dog".

### To Push

To push all commits from the local repo to the master branch in the remote repo (`origin`) whenever they have not been updated,

    $ git push origin master

Say yes, if, in the first time you push, you are asked that whether you should consider the RSA host key for GitHub's IP address as a safe one.

If you have messed up something, and Git is unable to figure out their ancestral relation and thus refuses to push, you may try with the flag `-f` or `--force`:

    $ git push origin master -f

This forces every commit in question in the local repo to overwrite its counterpart in the remote repo, and may cause the remote repo to lose data, so think twice before using it.

## Branching and Manipulation

### To Clone and Fork

### To Create New Branch

### To Merge

### 



## More Information

* The Git [Documentation](https://git-scm.com/documentation)

    This is the documentation on the official homepage of Git. Same material may be found in `man` pages that are included in the Git package itself, to quote the site.

* Richard E. Silverman (2013). *Git Pocket Guide*. Sebastopol, CA: O’Reilly Media.

    Guides for Git are abundant. This is a readable short guide that may both be read from cover to cover, and looked up as reference.

* [Git—The Simple Guide](http://up1.github.io/git-guide/index.html)

    A table of for the most common Git commands, and very brief explanations for them. On the site, there is a downloadable PDF version.

* [Stack Overflow](http://stackoverflow.com)

    Stack Overflow is still the most likely place you end up with if you google your problem, but, since everyone can submit, you should take their advice with a grain of salt.
