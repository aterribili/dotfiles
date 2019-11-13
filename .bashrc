export HOME=~
export PATH+=":$HOME/.bin"
export PATH+=":$HOME/Library/Android/sdk/platform-tools"
export PATH+=":$HOME/.local/bin"
export PATH+=":/usr/local/opt/icu4c/bin"
export PATH+=":/usr/local/sbin"

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

PS1='\[\e[0;36m\]‚îÄ\[\e[1;37m\][\[\w\]]\[\e[0m\]\[\e[0;36m\]\[\e[0;93m\]$(parse_git_branch)\[\e[0;36m\]\[\e[1;32m\][\[\A\]]\[\e[0m\]\$ '

[ -f ~/.bash_aliases ] && source ~/.bash_aliases

export VISUAL="vim"
export TERM=xterm-color
export CLICOLOR=YES

export GOPATH=$HOME/go-workspace
export GOROOT=/usr/local/opt/go/libexec
export PATH+=":$GOPATH/bin"
export PATH+=":$GOROOT/bin"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

 export NVM_DIR="$HOME/.nvm"
 . "/usr/local/opt/nvm/nvm.sh"

# apple speed up things
defaults write -g ApplePressAndHoldEnabled -bool false
defaults write NSGlobalDomain KeyRepeat -int 1
defaults write NSGlobalDomain InitialKeyRepeat -int 12

GPG_TTY=$(tty)
gpgconf --kill gpg-agent
