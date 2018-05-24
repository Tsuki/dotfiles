# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.dotfiles/oh-my-zsh
# if you want to use this, change your non-ascii font to Droid Sans Mono for Awesome
# POWERLEVEL9K_MODE='awesome-patched'
export ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
# https://github.com/bhilburn/powerlevel9k#customizing-prompt-segments
# https://github.com/bhilburn/powerlevel9k/wiki/Stylizing-Your-Prompt
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=('context' 'dir' 'vcs')
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=('status' 'history' 'time')
# colorcode test
# for code ({000..255}) print -P -- "$code: %F{$code}This is how your text would look like%f"
POWERLEVEL9K_NVM_FOREGROUND='000'
POWERLEVEL9K_NVM_BACKGROUND='072'
POWERLEVEL9K_SHOW_CHANGESET=true
POWERLEVEL9K_TIME_FORMAT="%D{%H:%M:%S %d/%m/%Y}"
#export ZSH_THEME="random"

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# disable colors in ls
# export DISABLE_LS_COLORS="true"
export LANG="en_US.UTF-8"
# disable autosetting terminal title.
export DISABLE_AUTO_TITLE="true"

# Which plugins would you like to load? (plugins can be found in ~/.dotfiles/oh-my-zsh/plugins/*)
# Example format: plugins=(git git-extras ruby rails extract sublime brew)
plugins=(colorize compleat dirpersist extract ssh-agent autojump git git-extras gulp history cp brew sublime ruby gpg-agent pip docker zsh-completions)

source $ZSH/oh-my-zsh.sh
source ~/.alias.zsh

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

autoload -U add-zsh-hook
autoload -U compinit && compinit
#add-zsh-hook chpwd

# Customize to your needs...
unsetopt correct

# run fortune on new terminal :)
# fortune

############
# Custom
############
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
export PATH="/usr/local/opt/gpg-agent/bin:$PATH"
# source "$HOME/.sdkman/bin/sdkman-init.sh"
# env
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$HOME/.pyenv/bin:$PATH"
export GOENV_ROOT="$HOME/.goenv"
export PATH="$GOENV_ROOT/bin:$PATH"
export PATH="$HOME/go/bin:$PATH"
if hash rbenv 2>/dev/null; then
    eval "$(rbenv init -)"
fi
if hash jenv  2>/dev/null; then
    eval "$(jenv init -)"
fi
if hash pyenv 2>/dev/null; then
    eval "$(pyenv init -)"
    eval "$(pyenv virtualenv-init -)"
fi
if hash goenv 2>/dev/null; then
    eval "$(goenv init -)"
fi
if hash kompose 2>/dev/null; then
    source <(kompose completion zsh)
    source <(helm completion zsh)
    #source <(minikube completion bash)
fi
#Android
export ANDROID_HOME=$HOME/Library/Android/sdk
export NDK_HOME=$ANDROID_HOME/ndk-bundle
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools

export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"  # Added by n-install (see http://git.io/n-install-repo).
export LESSOPEN='|pygmentize %s'
if [ "$(uname)" != "Darwin" ]; then
    screenfetch
fi
###-begin-pm2-completion-###
### credits to npm for the completion file model
#
# Installation: pm2 completion >> ~/.bashrc  (or ~/.zshrc)
#

COMP_WORDBREAKS=${COMP_WORDBREAKS/=/}
COMP_WORDBREAKS=${COMP_WORDBREAKS/@/}
export COMP_WORDBREAKS

if type complete &>/dev/null; then
  _pm2_completion () {
    local si="$IFS"
    IFS=$'\n' COMPREPLY=($(COMP_CWORD="$COMP_CWORD" \
                           COMP_LINE="$COMP_LINE" \
                           COMP_POINT="$COMP_POINT" \
                           pm2 completion -- "${COMP_WORDS[@]}" \
                           2>/dev/null)) || return $?
    IFS="$si"
  }
  complete -o default -F _pm2_completion pm2
elif type compctl &>/dev/null; then
  _pm2_completion () {
    local cword line point words si
    read -Ac words
    read -cn cword
    let cword-=1
    read -l line
    read -ln point
    si="$IFS"
    IFS=$'\n' reply=($(COMP_CWORD="$cword" \
                       COMP_LINE="$line" \
                       COMP_POINT="$point" \
                       pm2 completion -- "${words[@]}" \
                       2>/dev/null)) || return $?
    IFS="$si"
  }
  compctl -K _pm2_completion + -f + pm2
fi
###-end-pm2-completion-###

###-tns-completion-start-###
if [ -f /Users/tsukatsuki/.tnsrc ]; then 
    source /Users/tsukatsuki/.tnsrc 
fi
###-tns-completion-end-###
export PATH="/usr/local/opt/qt/bin:$PATH"
export PATH="$HOME/.fastlane/bin:$PATH"
#source /usr/local/share/zsh/site-functions/pyenv.zsh

###-tns-completion-start-###
if [ -f /Users/AlexLeung/.tnsrc ]; then 
    source /Users/AlexLeung/.tnsrc 
fi
###-tns-completion-end-###
export HOMEBREW_NO_AUTO_UPDATE=1
export GPG_TTY=$(tty)
