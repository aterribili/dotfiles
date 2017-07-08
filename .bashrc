export HOME=~
export PATH+="$HOME/.bin"

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

PS1='\[\e[0;36m\]┌─\[\e[1;37m\][\w]\[\e[0m\]\[\e[0;36m\]\[\e[0;93m\]$(parse_git_branch)\n\[\e[0;36m\]└─\[\e[1;32m\][\A]\[\e[0m\]\$ '
[ -f ~/.bash_aliases ] && source ~/.bash_aliases

export VISUAL="vim"
export TERM=xterm-color

export CLICOLOR=YES
