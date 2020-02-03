# oh-my-zsh
export ZSH="/Users/neba/.oh-my-zsh"

source $ZSH/oh-my-zsh.sh

# alias
alias vz='vim ~/dotfiles/.zshrc'
alias v='vim'
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'
# global
alias -g A='| awk'
alias -g P='| pbcopy'
alias -g C='| wc -l'
alias -g G='| grep --color=auto'
# cd
alias w='cd ~/Workspace'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
# git
alias g='git'
alias ga='git add'
alias gd='git diff'
alias gs='git status'
alias gp='git push'
alias gb='git branch'
alias gco='git checkout'
alias gm='git merge'
alias gf='git fetch'
alias gc='git commit'
alias gr='git rebase'
# docker
alias d='docker'
alias dc='docker-compose'
alias di='docker image'
alias db='docker build'
# kubernetes
alias k='kubectl'
source <(kubectl completion zsh)

# pyenv
export PYENV_ROOT=/usr/local/Cellar/pyenv
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

# node
export PATH=$PATH:~/.nodebrew/current/bin

# completion
if [ -e ~/.zsh/completions ]; then
  fpath=(~/.zsh/completions $fpath)
fi

autoload -U compinit
compinit

# powerlevel9k
source /usr/local/opt/powerlevel9k/powerlevel9k.zsh-theme
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status virtualenv)

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
