alias e='emacs'
alias en='emacs -nw'
alias ack='ack-grep'
alias n='nautilus'

cdls() {
   if [ -z "$1" ]; then
       cd && ls
   else
       cd "$*" && ls  
   fi  
}
alias cd=cdls

# change directory to top level of current git repo
alias cdg='cd $(git rev-parse --git-dir)/..'