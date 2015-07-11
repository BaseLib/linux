
#set History Params
# don't put duplicate lines in the history or force ignoredups and ignorespace                                                                                                                                 
export HISTSIZE=100000
export HISTFILESIZE=1000000000
HISTCONTROL=ignoredups:ignorespace          

# don't record these commands in the history; who cares about ls?
export HISTIGNORE='pwd:ls:history:'

# append to the history file, don't overwrite it    
shopt -s histappend 

# see http://www.gnu.org/software/bash/manual/html_node/The-Shopt-Builtin.html#The-Shopt-Builtin
#histappend histverify histreedit \
#    cdspell expand_aliases cmdhist \
#    hostcomplete no_empty_cmd_completion nocaseglob \
#    checkhash extglob globstar extdebug dirspell


#Local Env Variables 
lscolor=" --color=auto"
#export LS_OPTIONS='--color=auto -h'

#user defined alias
alias ag="alias | grep"

# Make it no matter what
alias mkdir="mkdir -p"
alias cls='clear'
alias less='less -r'
alias tree='tree -C'
alias grep="grep --color=auto"
alias egrep="egrep --color=auto"

alias vi="vim"
## Get server cpu info ##
alias cpuinfo='lscpu'

alias now='date +"%Y-%m-%d %T"'


alias ..="cd ../"
alias ...="cd ../../"
alias ....="cd ../../../"

# show how many processes each user is running
alias procperuser='ps ax -o user | sort | uniq -c | sort -nr'


#   ttop:  Recommended 'top' invocation to minimize resources
#   ------------------------------------------------------------
#       Taken from this macosxhints article
#       http://www.macosxhints.com/article.php?story=20060816123853639
#   ------------------------------------------------------------
alias ttop="top -R -F -s 10 -o rsize"

# Full Recursive Directory Listing
alias lr='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'' | less'



#------------------------------------------////
# Colors:
#------------------------------------------////
black='\e[0;30m'
blue='\e[0;34m'
green='\e[0;32m'
cyan='\e[0;36m'
red='\e[0;31m'
purple='\e[0;35m'
brown='\e[0;33m'
lightgray='\e[0;37m'
darkgray='\e[1;30m'
lightblue='\e[1;34m'
lightgreen='\e[1;32m'
lightcyan='\e[1;36m'
lightred='\e[1;31m'
lightpurple='\e[1;35m'
yellow='\e[1;33m'
white='\e[1;37m'
nc='\e[0m'





# Actions during bash profile
[ -f /etc/bash_completion ] && . /etc/bash_completion
[ -f /opt/local/etc/bash_completion ] && . /opt/local/etc/bash_completion
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion
[ -f $HOME/etc/bash_completion ] && . $HOME/etc/bash_completion
