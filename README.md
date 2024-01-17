This repository is initialised as a bare one.
```
mkdir bare_repo && cd bare_repo
git init --bare
```

To use git cli add line to your .bashrc\.zshrc
```
alias dotrepo='/usr/bin/git --git-dir=$HOME/Developer/dotfiles --work-tree=$HOME
```
Use dotrepo instead of git command

Setup repo to ignore untracked files (which is all $HOME dir)
```
dotrepo config --local status.showUntrackedFiles no
```

To add files use:
```
dotrepo add filename
```
