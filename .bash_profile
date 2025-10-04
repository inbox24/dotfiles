#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

export EDITOR='vim'
export VISUAL="$EDITOR"
export BROWSER="firefox"
export TERMINAL="kitty"
export PAGER="less"

export PYTHON_VIRTUALENV="$HOME/.virtualenvs"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CONFIG_HOME="$HOME/.config"


export LANG="en_AU.UTF-8"
export LC_ALL="en_AU.UTF-8"
export LANGUAGE="en_AU:en"

export GTK_IM_MODULE=ibus
export QT_IM_MODULE=ibus
export XMODIFIERS=@im=ibus

export LIBVA_DRIVER_NAME=nvidia
export NVD_BACKEND=direct
export MOZ_X11_EGL=1
export MOZ_DISABLE_RDD_SANDBOX=1

export FILE_MANAGER="thunar" 
export IMAGE_VIEWER="feh" 
export PDF_VIEWER="mupdf"
export VIDEO_PLAYER="mpv"

