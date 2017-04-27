#!/bin/sh -e
git config --global user.email jorge.diazbenitosoriano@gmail.com
git config --global user.name "Jorge Antonio Diaz-Benito Soriano"
git config --global commit.gpgsign true
git config --global rebase.autosquash true
git config --global core.autocrlf input
git config --global alias.forcepush 'push --force-with-lease'
git config --global alias.commend 'commit --amend --no-edit'
git config --global alias.it '!git init && git commit -m "root" --allow-empty'
git config --global alias.list 'status --short --branch'
git config --global alias.grog 'log --graph --abbrev-commit --decorate --all --format=format:"%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(dim white) - %an%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n %C(white)%s%C(reset)"'
git config --global alias.fixup '"{ FIXUP_INTO=$(git log --grep=$1 --pretty=format:"%h" | head -n 1) && git commit --fixup :/$1 && GIT_SEQUENCE_EDITOR=: git rebase -i —-autosquash $FIXUP_INTO~1; }; f"'
