#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

fixntfs() {
  [ -z "$1" ] && return 1
  sudo ntfsfix "/dev/$1" && \
  sudo umount "/dev/$1" && \
  sudo mount "/dev/$1"
}
