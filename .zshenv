# ~/.zshenv - Environment variables for all zsh shells
# This file is read by ALL zsh instances (login, interactive, and scripts)
# Put environment variables here, not commands that execute programs

# Basic tool preferences
# These tell other programs which applications to use for common tasks
export EDITOR='vim'
export VISUAL="$EDITOR"  # Visual editor, typically same as EDITOR
export BROWSER="firefox"
export TERMINAL="kitty"  # Notice I kept your kitty instead of alacritty
export PAGER="less"      # Program used for viewing long text output
export CLICOLOR=1        # Enable colors in command line tools

# Python virtual environment location
export PYTHON_VIRTUALENV="$HOME/.virtualenvs"

# XDG Base Directory specification
# Modern programs use these to organize their config and data files
# This keeps your home directory cleaner by centralizing application files
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CONFIG_HOME="$HOME/.config"

# Locale settings - defines language and formatting conventions
export LANG="en_AU.UTF-8"
export LC_ALL="en_AU.UTF-8"
export LANGUAGE="en_AU:en"

# Mozilla/Firefox specific settings
export MOZ_X11_EGL=1              # Use EGL for hardware acceleration
export MOZ_DISABLE_RDD_SANDBOX=1  # Disable RDD sandbox (sometimes needed for AMD)

# AMD GPU specific settings for your Radeon graphics
# These enable performance features and optimizations
export RADV_PERFTEST=sam,nggc  # Enable Smart Access Memory and NGG culling
export AMD_DEBUG=nofmask       # Disable frame masking
export RADV_DEBUG=llvm         # Use LLVM backend for shader compilation
export AMD_VULKAN_ICD=RADV     # Use RADV (Mesa) Vulkan driver

# Preferred GUI applications
export FILE_MANAGER="yazi"
export IMAGE_VIEWER="feh"
export PDF_VIEWER="mupdf"
export VIDEO_PLAYER="mpv"

# Path modifications
# Add your personal bin directories to PATH if they're not already there
# The (N-/) syntax is zsh-specific: N means null_glob (no error if path doesn't exist)
# and -/ means only include if it's a directory
typeset -U path  # This ensures PATH only contains unique entries
path=(
    $HOME/.local/bin(N-/)
    $HOME/bin(N-/)
    $HOME/binaries(N-/)
    /opt/waterfox(N-/)
    $path
)

# Rust/Cargo environment
# The .cargo/env file sets up paths for Rust-installed binaries
if [[ -f "$HOME/.cargo/env" ]]; then
    source "$HOME/.cargo/env"
fi
