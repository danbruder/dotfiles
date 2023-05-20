# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"
plugins=(emoji-clock emoji tmux docker-compose emotty git gitignore history rsync node npm docker)

# User configuration
export PATH=$HOME/bin:/usr/local/bin:$PATH
source $ZSH/oh-my-zsh.sh

eval "$(fasd --init auto)"

export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

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

export PGHOST=localhost
export PGUSER=postgres
export PGPASSWORD=postgres

_apex()  {
  COMPREPLY=()
  local cur="${COMP_WORDS[COMP_CWORD]}"
  local opts="$(apex autocomplete -- ${COMP_WORDS[@]:1})"
  COMPREPLY=( $(compgen -W "${opts}" -- ${cur}) )
  return 0
}

alias python="/usr/bin/python3"
alias python3="/usr/bin/python3"
alias vim="nvim"
export PKG_CONFIG_PATH=/usr/local/opt/openssl/lib/pkgconfig
export GO111MODULE=on
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH=~/.npm-global/bin:$PATH
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH="/usr/local/opt/imagemagick@6/bin:$PATH"


## The next line updates PATH for the Google Cloud SDK.
#if [ -f '/Users/dan/gcloud/path.zsh.inc' ]; then . '/Users/dan/gcloud/path.zsh.inc'; fi

## The next line enables shell command completion for gcloud.
#if [ -f '/Users/dan/gcloud/completion.zsh.inc' ]; then . '/Users/dan/gcloud/completion.zsh.inc'; fi

#test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh" || true


export PATH=$PATH:$HOME/.linkerd2/bin
export PATH=$PATH:$HOME/.composer/vendor/bin

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/usr/local/var/google-cloud-sdk/path.zsh.inc' ]; then . '/usr/local/var/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/usr/local/var/google-cloud-sdk/completion.zsh.inc' ]; then . '/usr/local/var/google-cloud-sdk/completion.zsh.inc'; fi
export PATH="/usr/local/opt/llvm@8/bin:$PATH"

export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

source /usr/local/var/istio-1.4.4/tools/_istioctl

alias cc="cargo check"
alias cr="cargo run"
alias ct="cargo test"

export DOTOKEN=3aed73475280c0d59ec90ba4a7c30ed7c3ede399f0881b64fb221bbdba86a269
#export PATH="/usr/local/opt/php@7.3/bin:$PATH"


export DOKKU_HOST=161.35.9.98
export DOKKU_PORT=22
export DOKKU_GIT_REMOTE=dokku

alias sail='bash vendor/bin/sail'
alias sa='bash vendor/bin/sail artisan'


export NOMAD_ADDR=http://100.117.192.86:4646

export PKG_CONFIG_PATH=/usr/local/opt/openssl/lib/pkgconfig

export PATH="$PATH:/usr/local/var/flutter/bin"

export PATH="/usr/local/opt/postgresql@12/bin:$PATH"
#export PATH="/usr/local/opt/node@14/bin:$PATH"
export PATH="/usr/local/opt/libpq/bin:$PATH"

export CC_armv7_unknown_linux_musleabi=/usr/local/bin/arm-linux-musleabi-gcc-8

# Haskell support
export PATH=/Users/dan/.local/bin:$PATH
export PATH="/usr/local/opt/openjdk/bin:$PATH"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/dan/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/dan/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/dan/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/dan/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


alias corn="cornucopia"

# BEGIN SNIPPET: Platform.sh CLI configuration
HOME=${HOME:-'/Users/dan'}
export PATH="$HOME/"'.platformsh/bin':"$PATH"
if [ -f "$HOME/"'.platformsh/shell-config.rc' ]; then . "$HOME/"'.platformsh/shell-config.rc'; fi # END SNIPPET

source /Users/dan/.docker/init-zsh.sh || true # Added by Docker Desktop

export PATH=$PATH:/usr/local/opt/roc/roc_nightly-macos_x86_64-2023-01-23-25f1d8d

export PATH="${HOME}/.dronedeploy/kutil:${PATH}"


# Load Angular CLI autocompletion.
source <(ng completion script)

export GO_PATH=~/go
export PATH=$PATH:/$GO_PATH/bin

export RESTIC_REPOSITORY="/Volumes/db1/restic1"
export RESTIC_PASSWORD="PancakesAreDelicious2"
alias do-backup="restic --verbose backup ~/Documents"

# opam configuration
[[ ! -r /Users/dan/.opam/opam-init/init.zsh ]] || source /Users/dan/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null

