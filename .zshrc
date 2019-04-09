# Created by newuser for 5.7.1
# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored
zstyle ':completion:*' matcher-list '' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}'
zstyle :compinstall filename '/home/ducthu/.zshrc'
zstyle ':completion:*' menu select

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt beep notify
bindkey -e
# End of lines configured by zsh-newuser-install


alias ls='lsd --color=auto'
alias ll='lsd -l --color=auto'
alias la='lsd -la --color=auto'
alias v='nvim'
alias vim='nvim'
alias pacrepo='sudo reflector -l 20 -f 10 --save /etc/pacman.d/mirrorlist'
alias pacman='sudo pacman'
alias journalctl='sudo journalctl'
alias pacu='sudo pacman -Syu --noconfirm'
alias systemctl='sudo systemctl'
alias se='ls /usr/bin | grep'

autoload -U promptinit; promptinit
prompt pure

BROWSER=/usr/bin/firefox
export EDITOR=/usr/bin/nvim
export READER=/usr/bin/zathura
export FILE=/usr/bin/ranger
TERMINAL=/usr/bin/urxvt

export PATH=$PATH"$HOME/.scripts"
export PATH="$PATH:$(du "$HOME/.scripts" | cut -f2 | tr '\n' ':' | sed 's/:*$//')"
#export PYTHONPATH="/usr/lib/python3.7/site-packages/"

# Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
(cat ~/.cache/wal/sequences &)

# Alternative (blocks terminal for 0-3ms)
cat ~/.cache/wal/sequences

# To add support for TTYs this line can be optionally added.
source ~/.cache/wal/colors-tty.sh
