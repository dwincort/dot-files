export PATH=$PATH:~/.cabal/bin

alias atom="open -a Atom"

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

function cabal() {
  case $1 in
    repl ) shift 1; command cabal new-repl "$@" ;;
    build ) shift 1; command cabal new-build "$@" ;;
    run ) shift 1; command cabal new-run "$@" ;;
    bench ) shift 1; command cabal new-bench "$@" ;;
    test ) shift 1; command cabal new-test "$@" ;;
    configure ) shift 1; command cabal new-configure "$@" ;;
    old-repl ) shift 1; command cabal repl "$@" ;;
    old-build ) shift 1; command cabal build "$@" ;;
    old-run ) shift 1; command cabal run "$@" ;;
    old-bench ) shift 1; command cabal bench "$@" ;;
    old-test ) shift 1; command cabal test "$@" ;;
    old-configure ) shift 1; command cabal configure "$@" ;;
    * ) command cabal "$@" ;;
  esac
}
