#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'

eval "$(dircolors -b ~/.dircolors 2>/dev/null || dircolors -b)"


alias ssh='TERM=xterm-256color ssh'
alias diff='diff --color'
alias dmesg='dmesg --color=always'
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'

PS1="\$(if [[ \$? == 0 ]]; then echo '\[\e[32m\]✓'; else echo '\[\e[31m\]✗'; fi) \[\e[38;5;8m\][\t]\$(r=\$(jobs -r | wc -l); s=\$(jobs -s | wc -l); if [ \$r -gt 0 ] || [ \$s -gt 0 ]; then echo -n \" \[\e[38;5;11m\][\"; [ \$r -gt 0 ] && echo -n \"R:\$r\"; [ \$r -gt 0 ] && [ \$s -gt 0 ] && echo -n \" \"; [ \$s -gt 0 ] && echo -n \"S:\$s\"; echo -n \"]\[\e[0m\]\"; fi) \[\e[38;5;9m\]\u\[\e[38;5;8m\]@\[\e[38;5;214m\]\h \[\e[38;5;12m\]\$PWD\[\033[0m\]\n$ "

# Jellyfin archive download
alias ytj='yt-dlp --config-location ~/.config/yt-dlp/config'

# Mobile Chinese download
alias ytm='yt-dlp --config-location ~/.config/yt-dlp/config2'
