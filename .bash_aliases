export PATH=$PATH:~/.cabal/bin

alias removeFirstLine="tail -n +2"

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
__git_complete "config" __git_main

if [ -f ~/.cabal-completion.bash ]; then
  . ~/.cabal-completion.bash
fi

function h() {
  hoogle --count=25 "$@"
}

function grephs() {
  grep -rn --include \*.hs "$1" */*
}

function lhs2pdf() {
  lhs2tex "$1.lhs" > "$1.tex"; pdflatex "$1.tex"
}
