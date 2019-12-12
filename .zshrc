# oh-my-zsh
export ZSH="/Users/neba/.oh-my-zsh"

# theme
ZSH_THEME="dracula"

plugins=(
  git
  docker
)

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
alias gst='git status'
alias gco='git checkout'
alias gf='git fetch'
alias gc='git commit'
# docker
alias d='docker'
alias dc='docker-compose'
alias di='docker image'
alias db='docker build'

# pyenv
export PYENV_ROOT=/usr/local/Cellar/pyenv
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
echo 'eval "$(pyenv init -)"' >> ~/.bash_profile
echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.bash_profile

# node
export PATH=$PATH:~/.nodebrew/current/bin

# completion
fpath=(~/.zsh/completion $fpath)
zstyle ':completion:*:*:docker:*' option-stacking yes
zstyle ':completion:*:*:docker-*:*' option-stacking yes

# powerlevel9k
source /usr/local/opt/powerlevel9k/powerlevel9k.zsh-theme
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status virtualenv)

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
