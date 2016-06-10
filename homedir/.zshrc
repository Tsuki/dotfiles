# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.dotfiles/oh-my-zsh
# if you want to use this, change your non-ascii font to Droid Sans Mono for Awesome
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
export ZSH_THEME="powerlevel9k/powerlevel9k"
# https://github.com/bhilburn/powerlevel9k#customizing-prompt-segments
# https://github.com/bhilburn/powerlevel9k/wiki/Stylizing-Your-Prompt
#POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir nvm vcs)
#POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status node_version history time)
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=('dir' 'vcs')
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=('status' 'history' 'time')
# colorcode test
# for code ({000..255}) print -P -- "$code: %F{$code}This is how your text would look like%f"
POWERLEVEL9K_PROMPT_ON_NEWLINE=false
POWERLEVEL9K_OS_ICON_BACKGROUND="white"
POWERLEVEL9K_OS_ICON_FOREGROUND="blue"
POWERLEVEL9K_DIR_HOME_FOREGROUND="white"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="white"
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="white"
POWERLEVEL9K_SHOW_CHANGESET=true
POWERLEVEL9K_TIME_FORMAT="%D{%H:%M:%S %d/%m/%Y}"
#export ZSH_THEME="random"

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# disable colors in ls
# export DISABLE_LS_COLORS="true"

# disable autosetting terminal title.
export DISABLE_AUTO_TITLE="true"

# Which plugins would you like to load? (plugins can be found in ~/.dotfiles/oh-my-zsh/plugins/*)
# Example format: plugins=(git git-extras ruby rails extract sublime brew)
plugins=(colorize compleat dirpersist extract ssh-agent autojump git git-extras gulp history cp brew sublime docker ruby)

source $ZSH/oh-my-zsh.sh

# source /usr/local/opt/nvm/nvm.sh
source $HOME/.dotfiles/alias.zsh
# load .nvmrc
#ifunction chpwd() {
#  emulate -L zsh
#  if [[ -f .nvmrc ]] then
#    nvm use `cat .nvmrc`
#  fi
#}
#[[ -f .nvmrc ]] && nvm use `cat .nvmrc`

# Customize to your needs...
unsetopt correct

# run fortune on new terminal :)
# fortune

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

PATH="/Users/Alicex/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/Users/Alicex/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/Users/Alicex/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/Users/Alicex/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/Alicex/perl5"; export PERL_MM_OPT;
# source "$HOME/.sdkman/bin/sdkman-init.sh"
eval "$(rbenv init -)"
#export PATH="/Users/Alicex/.rbenv/shims:${PATH}"
#export RBENV_SHELL=zsh
#source '/usr/local/Cellar/rbenv/1.0.0/libexec/../completions/rbenv.zsh'
# command rbenv rehash 2>/dev/null
rbenv() {
  local command
  command="$1"
  if [ "$#" -gt 0 ]; then
    shift
  fi

  case "$command" in
  rehash|shell)
    eval "$(rbenv "sh-$command" "$@")";;
  *)
    command rbenv "$command" "$@";;
  esac
}
#eval "$(jenv init -)"
export PATH="/Users/Alicex/.jenv/shims:${PATH}"
source "/Users/Alicex/.jenv/libexec/../completions/jenv.zsh"
# jenv rehash 2>/dev/null
export JENV_LOADED=1
unset JAVA_HOME
jenv() {
  typeset command
  command="$1"
  if [ "$#" -gt 0 ]; then
    shift
  fi

  case "$command" in
  enable-plugin|rehash|shell|shell-options)
    eval `jenv "sh-$command" "$@"`;;
  *)
    command jenv "$command" "$@";;
  esac
}

export NVM_DIR="$HOME/.nvm"
#. "$(brew --prefix nvm)/nvm.sh"
#. "$(brew --prefix nvm)/nvm.sh" --no-use

export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"  # Added by n-install (see http://git.io/n-install-repo).
export HOMEBREW_TEMP=/var/tmp/brew
function swap()         
{
    local TMPFILE=tmp.$$
    mv "$1" $TMPFILE && mv "$2" "$1" && mv $TMPFILE $2
}
export LESSOPEN='|pygmentize %s'
