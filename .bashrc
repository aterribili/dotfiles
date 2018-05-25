export HOME=~
export PATH+=":$HOME/.bin"
export PATH+=":$HOME/Library/Android/sdk/platform-tools/"
export PATH+=":$HOME/.local/bin"
export PATH="$HOME/.rbenv/bin:$PATH"

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

PS1='\[\e[0;36m\]┌─\[\e[1;37m\][\w]\[\e[0m\]\[\e[0;36m\]\[\e[0;93m\]$(parse_git_branch)\n\[\e[0;36m\]└─\[\e[1;32m\][\A]\[\e[0m\]\$ '
[ -f ~/.bash_aliases ] && source ~/.bash_aliases

export VISUAL="vim"
export TERM=xterm-color
export CLICOLOR=YES

export IOS_CLI_HOME="$NU_HOME/ios-cli"
export PATH="$IOS_CLI_HOME:$PATH"
export GOPATH=$HOME/go-workspace
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'

eval "$(rbenv init -)"

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

export NVM_DIR="$HOME/.nvm"
  . "/usr/local/opt/nvm/nvm.sh"
