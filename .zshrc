# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"
plugins=(emoji-clock emoji tmux docker-compose emotty git gitignore history rsync node npm docker)

# User configuration
export PATH=$HOME/bin:/usr/local/bin:$PATH
source $ZSH/oh-my-zsh.sh

eval "$(fasd --init auto)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

cdr(){
  cd $(git rev-parse --show-toplevel)
}

# fd - cd to selected directory
fd() {
  local dir
  dir=$(find ${1:-*} -path '*/\.*' -prune \
    -o -type d -print 2> /dev/null | fzf +m) &&
    cd "$dir"
}

# fdr - cd to selected parent directory
fdr() {
  local declare dirs=()
  get_parent_dirs() {
    if [[ -d "${1}" ]]; then dirs+=("$1"); else return; fi
    if [[ "${1}" == '/' ]]; then
      for _dir in "${dirs[@]}"; do echo $_dir; done
    else
      get_parent_dirs $(dirname "$1")
    fi
  }
  local DIR=$(get_parent_dirs $(realpath "${1:-$(pwd)}") | fzf-tmux --tac)
  cd "$DIR"
}

#z() {
  #local dir
  #dir="$(fasd -Rdl "$1" | fzf -1 -0 --no-sort +m)" && cd "${dir}" || return 1
#}

alias chip="ssh chip@chip.local"
alias ds='docker-sync'
alias ty='open -a Typora'
alias dc='docker-compose'
alias dn='docker network'
alias d='docker'
alias dm='docker-machine'
alias dra='docker stop $(docker ps -a -q) && docker rm $(docker ps -a -q)'
alias dd='docker-drush'

_zsh_cli_fg() { fg; }
zle -N _zsh_cli_fg
bindkey '^Z' _zsh_cli_fg

alias clean-modules='sudo find . -name "node_modules" -exec rm -rf "{}" +'

export GOPATH=/Users/dan/go
export PATH=$GOPATH/bin:$PATH

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh

# Automatically added by the Platform.sh CLI installer
export PATH='/Users/dan/.platformsh/bin':"$PATH"
[ "$BASH" ] || [ "$ZSH" ] && . '/Users/dan/.platformsh/shell-config.rc' 2>/dev/null || true
export PATH="/usr/local/sbin:$PATH"

export PGDATA='/usr/local/var/postgres'
export PGHOST=localhost
alias start-pg='pg_ctl -l $PGDATA/server.log start'
alias stop-pg='pg_ctl stop -m fast'
alias show-pg-status='pg_ctl status'
alias restart-pg='pg_ctl reload'

# The next line updates PATH for the Google Cloud SDK.
if [ -f /usr/local/opt/google-cloud-sdk/path.zsh.inc ]; then
  source '/usr/local/opt/google-cloud-sdk/path.zsh.inc'
fi

# The next line enables shell command completion for gcloud.
if [ -f /usr/local/opt/google-cloud-sdk/completion.zsh.inc ]; then
  source '/usr/local/opt/google-cloud-sdk/completion.zsh.inc'
fi

_apex()  {
  COMPREPLY=()
  local cur="${COMP_WORDS[COMP_CWORD]}"
  local opts="$(apex autocomplete -- ${COMP_WORDS[@]:1})"
  COMPREPLY=( $(compgen -W "${opts}" -- ${cur}) )
  return 0
}

complete -F _apex apex
alias python="/usr/local/bin/python3"
alias vim="nvim"
export PKG_CONFIG_PATH=/usr/local/opt/openssl/lib/pkgconfig
export GO111MODULE=on
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH=~/.npm-global/bin:$PATH
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
