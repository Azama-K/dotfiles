#補完機能有効
autoload -U compinit
compinit -u

#補完機能色付け
autoload -U colors
colors
zstyle ':completion:*' list-colors "${LS_COLORS}"

#cdを使わずにディレクトリ移動
setopt auto_cd

#not capital and small when tab compliment
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# 消してもコマンドの履歴を残す
export HISTFILE=/Users/e185731/.zsh_history
export HISTSIZE=10000
export SAVEHIST=1000000

#error type in vim "Failed to set locale category"
#export LC_ALL=utf-8
#export LC_CTYPE=utf-8

export LC_ALL=ja_JP.UTF-8
export LANG=ja_JP.UTF-8

# export PYENV_ROOT=/Users/e185731/.pyenv
# export PATH="$PYENV_ROOT/bin:$PATH"
export PYENV_SHELL=sh
export GNUTERM=aqua
set terminal x11
set terminal dumb
set terminal jpeg
set output "out.png"
#PROMPT='%m%B%F{green}[%d]%f%b%%'
PROMPT='%m%B%F{green}[%~]%f%b%%'
# PROMPT="%{${fg[green]}%}[%n@%m]%{${reset_color}%} %~
# %# "
#PROMPT='%F{green}%(5~,%-1~/.../%2~,%~)%f
#%F{green}%B●%b%f'
command pyenv rehash 2>/dev/null
setopt correct
eval "$(pyenv init -)"
# pyenv() {
#   local command
#   command="$1"
#   if [ "$#" -gt 0 ]; then
#     shift
#   fi

#   case "$command" in
#   rehash|shell)
#     eval "$(pyenv "sh-$command" "$@")";;
#   *)
#     command pyenv "$command" "$@";;
#   esac
# }
alias brew='PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/sbin brew'
alias vim_conf='vim ~/.vimrc'
alias zsh_conf='vim ~/.zshrc'
alias rm='rm -r -i'
alias vimtextbook='vim ~/Documents/memo/vimExplanatory.txt'
alias juno='jupyter notebook'

#automatic pushd command when cd command
setopt auto_pushd

export GOPATH=/Users/e185731/src/go
path=($GOPATH/bin $path)
export GOROOT="/usr/local/opt/go/libexec"
export GO111MODULE=on
# eval "$(perl -I$HOME/perl5/lib/perl5 -Mlocal::lib=$HOME/perl5)"
# eval "$(perl -I$HOME/perl5/lib/perl5 -Mlocal::lib)"
if which plenv > /dev/null; then eval "$(plenv init -)"; fi

eval "$(rbenv init -)"

# heroku autocomplete setup
HEROKU_AC_ZSH_SETUP_PATH=/Users/e185731/Library/Caches/heroku/autocomplete/zsh_setup && test -f $HEROKU_AC_ZSH_SETUP_PATH && source $HEROKU_AC_ZSH_SETUP_PATH;
