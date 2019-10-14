export TERM="xterm-256color"

fpath=($fpath $HOME/.zsh/func)
typeset -U fpath
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
