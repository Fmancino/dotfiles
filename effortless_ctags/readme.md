from: https://tbaggery.com/2011/08/08/effortless-ctags-with-git.html

utility files to implement this ctags trick.
just run setup.sh and "git init" in the repository you want to have ctags on.
--c++-kinds=+p = puts prototype tags (not only f) f is function implementation
--fields=+iaS  = adds i (inheritance info) a (access or export of class member)
                and S (prototype paramter list - signature)
--extra=+q = inclode exte class qualified tag (more precise jumping possible)
