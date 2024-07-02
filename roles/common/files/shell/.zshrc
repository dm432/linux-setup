export ZSH="$HOME/.oh-my-zsh"
export HISTSIZE=1000000

ZSH_THEME="robbyrussell"
HYPHEN_INSENSITIVE="true"
ZSH_DISABLE_COMPFIX="true"

plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
    fzf
)

source $ZSH/oh-my-zsh.sh
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

alias ll="ls -alF"

alias mv="mv -i"
alias cp="cp -i"
alias ln="ln -i"
alias rm="rm -I --preserve-root"
