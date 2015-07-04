
#set History Params
export HISTSIZE=100000
export HISTFILESIZE=1000000000
 # see http://www.gnu.org/software/bash/manual/html_node/The-Shopt-Builtin.html#The-Shopt-Builtin
#histappend histverify histreedit \
#    cdspell expand_aliases cmdhist \
#    hostcomplete no_empty_cmd_completion nocaseglob \
#    checkhash extglob globstar extdebug dirspell


#Local Env Variables 
lscolor=" --color=auto"


#user defined alias

alias ag="alias | grep"

# Actions during bash profile
[ -f /etc/bash_completion ] && . /etc/bash_completion
[ -f /opt/local/etc/bash_completion ] && . /opt/local/etc/bash_completion
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion
[ -f $HOME/etc/bash_completion ] && . $HOME/etc/bash_completion
