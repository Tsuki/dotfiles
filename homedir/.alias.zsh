#!/usr/bin/env bash
alias reload!='. ~/.zshrc'
alias cls='clear'

# sort files in current directory by the number of words they contain
alias wordy='wc -w * | sort | tail -n10'
alias filecount='ls -aRF | wc -l'
alias u='du -sh * | sort -h'
#alias adventure='emacs -batch -l dunnet'
#alias mailsize='du -hs ~/Library/mail'
# alias ttop='top -ocpu -R -F -s 2 -n30'
alias lh='ll -d .*'
alias showhidden="defaults write com.apple.finder AppleShowAllFiles TRUE && killall Finder"
alias hidehidden="defaults write com.apple.finder AppleShowAllFiles FALSE && killall Finder"
#dockers
alias containerclean="docker ps -a -q | xargs docker rm"
alias imageclean="docker images --filter dangling=true -q | xargs docker rmi"

alias sdkinit='source "$HOME/.sdkman/bin/sdkman-init.sh"'
alias nvminit='. "$(brew --prefix nvm)/nvm.sh" --no-use'
alias wip='gunwip && gwip'
if [ "$(uname -s)" = "Darwin" ]; then
	alias rm='rmtrash'
fi
function swap()
{
    local TMPFILE=tmp.$$
    mv "$1" $TMPFILE && mv "$2" "$1" && mv $TMPFILE $2
}

