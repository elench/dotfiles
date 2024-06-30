source ~/.config/git/git-prompt.sh

if [ "$color_prompt" = yes ]; then
    PS1='\[\033[01;32m\][\u@\h\[\033[01;34m\] \w\[\033[01;33m\]$(__git_ps1 " (%s)")\[\033[01;32m\]]λ \[\033[00m\]'
fi
unset color_prompt force_color_prompt

# some more ls aliases
alias ll='ls -lF'
alias lla='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias vim='nvim'
alias rm='rm -i'

. "$HOME/.cargo/env"

BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        source "$BASE16_SHELL/profile_helper.sh"

base16_default-dark

export SKIM_DEFAULT_COMMAND='fd --type file --exclude "build*" --exclude "extern/*"'
