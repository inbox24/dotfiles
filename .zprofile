# ~/.zprofile - Login shell initialization
# This file runs once when you log in (but not for each new terminal)
# Use this for starting services and one-time session setup

# Auto-start X server when logging into the first virtual console
# This is convenient because it means logging in automatically gives you a GUI
# The -z check ensures DISPLAY is not set (we're not already in X)
# The tty check ensures we're on the first console, not TTY2 or others
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
    # The exec command replaces the login shell with startx
    # This means when you exit X, you're automatically logged out
    # rather than being dropped back to a console prompt
    exec startx
fi

# SSH Agent setup
# The SSH agent holds your decrypted SSH keys in memory so you don't have to
# re-enter your passphrase every time you connect to a remote server
# We only start a new agent if one isn't already running
if [[ -z "$SSH_AUTH_SOCK" ]]; then
    eval "$(ssh-agent -s)"
fi

# If you have additional .zprofile.d scripts (similar to your .bashrc.d pattern)
# you can source them here
# This is useful for machine-specific or project-specific login setup
if [[ -d ~/.zprofile.d ]]; then
    for profile_script in ~/.zprofile.d/*(.N); do
        source "$profile_script"
    done
fi
