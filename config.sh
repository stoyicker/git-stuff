#!/bin/sh -e

git config --global user.email jorge.diazbenitosoriano@gmail.com
git config --global user.name "Jorge Antonio Diaz-Benito Soriano"
git config --global push.default simple
git config --global pull.rebase true
git config --global fetch.prune true
git config --global rebase.autosquash true
git config --global core.autocrlf input
git config --global core.fileMode false
git config --global credential.helper store
# Use this for Nano
git config --global core.editor "nano"
# Use this for Atom
# git config --global core.editor "atom --wait"
# Use this for Sublime Text 3: 
# git config --global core.editor 'subl -n -w'
git config --global alias.forcepush 'push --force-with-lease'
git config --global alias.commend 'commit --amend --no-edit'
git config --global alias.it '!git init && git commit -m "root" --allow-empty'
git config --global alias.list 'status --short --branch'
git config --global alias.grog 'log --graph --abbrev-commit --decorate --all --format=format:"%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(dim white) - %an%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n %C(white)%s%C(reset)"'
git config --global alias.fixup '!f() { FIXUP_INTO=$(git log --grep=$1 --pretty=format:"%h" | head -n 1) && git commit --fixup :/$1 && GIT_SEQUENCE_EDITOR=: git rebase -i --autosquash $FIXUP_INTO~1; }; f'
git config --global alias.nuke '!git reset --hard ; git clean -fdx ; git submodule foreach --recursive git reset --hard ; git submodule foreach --recursive git clean -fdx'
git config --global alias.lg "log --color --graph --date=short --pretty=format:'%Cred%h%Creset %Cgreen%ad%Creset %s%C(yellow)%d%Creset %C(bold blue)<%an>%Creset' --abbrev-commit"
git config --global alias.assume-unchanged "update-index --assume-unchanged"
git config --global alias.unassume-unchanged "update-index --no-assume-unchanged"
git config --global alias.assumed-unchanged '!git ls-files -v | grep "^[a-z]"'
git config --global alias.fstatus '!f() { git status && git assumed-unchanged; }; f'
git config --global alias.commitfortag "rev-list -n 1"
# Call like this: git deepcopy remoturl
git config --global alias.deepcopy '!f() { curl https://raw.githubusercontent.com/stoyicker/git-stuff/master/deepcopy | bash -s $1 `echo $1 | grep -oP (?<=/)[^/.]+`; }; f'
git config --global alias.wdiff "diff --color-words"
