# ~/.zshrc - Interactive shell configuration
# This file runs for every new interactive shell (each terminal you open)
# Put prompt, aliases, functions, and shell options here

# ===== Zsh Options =====
# These modify how zsh behaves interactively
fastfetch

# History configuration
setopt SHARE_HISTORY              # Share history across all shells
setopt HIST_IGNORE_ALL_DUPS       # Don't record duplicate commands
setopt HIST_FIND_NO_DUPS          # Don't show duplicates when searching
setopt HIST_IGNORE_SPACE          # Don't record commands starting with space
setopt HIST_REDUCE_BLANKS         # Remove extra blanks from commands
setopt PROMPT_SUBST               # Enable command substitution in prompt

# Define history file location and size
HISTFILE=~/.zsh_history
HISTSIZE=10000          # Lines of history to keep in memory
SAVEHIST=10000          # Lines of history to save to file

# Enable case-insensitive completion in zsh
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

# ===== Vi Mode Configuration =====

# Enable vi mode
bindkey -v

# Reduce ESC delay for faster mode switching (10ms instead of 400ms)
export KEYTIMEOUT=1

# Mode indicator in prompt with cursor shape changes
function zle-keymap-select {
    if [[ ${KEYMAP} == vicmd ]] || [[ $1 = 'block' ]]; then
        # Normal/Command mode
        VI_MODE="%F{yellow}❮N❯%f"
        echo -ne '\e[1 q'  # Blinking block cursor
    else
        # Insert mode
        VI_MODE="%F{green}❮I❯%f"
        echo -ne '\e[5 q'  # Blinking beam cursor
    fi
    zle reset-prompt
}
zle -N zle-keymap-select

# Initialize to insert mode when getting a new prompt
function zle-line-init {
    VI_MODE="%F{green}❮I❯%f"
    echo -ne '\e[5 q'  # Blinking beam cursor
    zle reset-prompt
}
zle -N zle-line-init

# Reset cursor when command finishes
function zle-line-finish {
    echo -ne '\e[5 q'
}
zle -N zle-line-finish

# ===== Prompt Configuration =====
# Converting your bash PS1 to zsh prompt syntax
# Your bash prompt showed: status indicator, time, job count, SSH indicator, user@host, and path

# Zsh uses different syntax for prompts, but we can achieve the same visual result
# %F{color} sets foreground color, %f resets it
# %? is the exit status of the last command
# %* is the time in 24-hour format
# %j is the number of background jobs
# %n is username, %m is hostname, %~ is current directory with ~ substitution

# This recreates your bash prompt in zsh syntax
#PROMPT='%(?.%F{green}✓.%F{red}✗) %F{8}[%*] %F{11}[%j]%f%(1j. .)${SSH_TTY:+"%F{196}🔒 %f"}%F{9}%n%F{8}@%F{214}%m %F{12}%~%f
#$ '
# If you want to understand the prompt syntax piece by piece:
# %(?. ... . ... ) - conditional: if last command succeeded, show first part, else second
# %F{green} - set foreground color to green
# %j - number of jobs
# %(1j. .) - if there's at least 1 job, show a space (for formatting)
# ${SSH_TTY:+...} - if SSH_TTY is set, show the lock icon (we're in SSH session)
stty -ixon
PROMPT='%(?.%F{green}✓.%F{red}✗) %F{8}[%*] %F{11}[%j]%f%(1j. .)${VI_MODE} ${SSH_TTY:+"%F{196}🔒 %f"}%F{9}%n%F{8}@%F{214}%m %F{12}%~%f
$ '

# ===== Color Configuration =====
# Enable colors for ls and other commands
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias diff='diff --color=auto'
alias dmesg='dmesg --color=always'

# Load dircolors configuration if available
# This sets colors for different file types in ls output
if [[ -f ~/.dircolors ]]; then
    eval "$(dircolors -b ~/.dircolors)"
else
    eval "$(dircolors -b)"
fi

# ===== Safety Aliases =====
# Prevent accidentally destroying your system with rm, chmod, or chown on root
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias rm='rm -i'  # Prompt before deletion

# ===== Source Additional Configuration =====
# If you have a .zshrc.d directory for modular configuration
# (similar to your .bashrc.d pattern), source those files
if [[ -d ~/.zshrc.d ]]; then
    for rc_script in ~/.zshrc.d/*(.N); do
        source "$rc_script"
    done
fi

# Source global zsh configuration if it exists
# Some systems provide system-wide zsh configuration
if [[ -f /etc/zshrc ]]; then
    source /etc/zshrc
fi
