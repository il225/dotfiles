#
# ~/.bashrc
#

#: If not running interactively, don't do anything
[[ $- != *i* ]] && return

#: Basic Display Stuffs
alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '


#: vi mode because i am addicted to vim motions
set -o vi

#: exception because emacs is a broken clock (right twice)
bind -m vi-command '/C-l: clear-screen'
bind -m vi-insert '/C-l: clear-screen'
bind -m vi-command '/C-u: unix-line-discard'
bind -m vi-insert '/C-u: unix-line-discard'

#: history size for convenience
export HISTFILESIZE=10000
export HISTSIZE=2000

if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi

#: i use lazyvim for now and i think this was in the config stuff for that
#: nvim config stuffs
source /usr/share/nvm/init-nvm.sh

#: make a directory for my bash commands at end of path
PATH=$PATH:~/bin

#: must have used angular but i can't remember
#: Load Angular CLI autocompletion.
source <(ng completion script)


# necessary OCaml config

# BEGIN opam configuration
# This is useful if you're using opam as it adds:
#   - the correct directories to the PATH
#   - auto-completion for the opam binary
# This section can be safely removed at any time if needed.
test -r '/home/isaac/.opam/opam-init/init.sh' && . '/home/isaac/.opam/opam-init/init.sh' > /dev/null 2> /dev/null || true
# END opam configuration


# a marker for a new instance, because it isn't always clear
# sometimes little message for future me
# maybe just some ascii doodles
# maybe a todo
~/bin/init_terminal
