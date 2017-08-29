#!/bin/sh -e
git config --global user.email jorge.diazbenitosoriano@gmail.com
git config --global user.name "Jorge Antonio Diaz-Benito Soriano"
git config --global push.default simple
git config --global pull.rebase true
git config --global fetch.prune true
git config --global commit.gpgsign true
git config --global rebase.autosquash true
git config --global core.autocrlf input
git config --global core.editor 'subl -n -w'
git config --global alias.forcepush 'push --force-with-lease'
git config --global alias.commend 'commit --amend --no-edit'
git config --global alias.it '!git init && git commit -m "root" --allow-empty'
git config --global alias.list 'status --short --branch'
git config --global alias.grog 'log --graph --abbrev-commit --decorate --all --format=format:"%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(dim white) - %an%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n %C(white)%s%C(reset)"'
git config --global alias.fixup '!f() { FIXUP_INTO=$(git log --grep=$1 --pretty=format:"%h" | head -n 1) && git commit --fixup :/$1 && GIT_SEQUENCE_EDITOR=: git rebase -i --autosquash $FIXUP_INTO~1; }; f'
git config --global alias.nuke '!git reset --hard ; git clean -fdx ; git submodule foreach --recursive git reset --hard ; git submodule foreach --recursive git clean -fdx'
