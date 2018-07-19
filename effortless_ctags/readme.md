# Effortless ctags
From: https://tbaggery.com/2011/08/08/effortless-ctags-with-git.html

Utility files to implement ctags effortlessly in vim repositories.

## Install
Just run `dotfiles/effortless_ctags/setup.sh` to get the files and git setup.
Run `git init` in the repository you want to have ctags on.

## Useful ctags flags
Docs: http://ctags.sourceforge.net/ctags.html
* **--c++-kinds=+p** - puts prototype tags (not only f) f is function implementation
* **--fields=+iaS**  - adds i (inheritance info) a (access or export of class member)
                       and S (prototype paramter list - signature)
* **--extra=+q** - inclode exte class qualified tag (more precise jumping possible)
