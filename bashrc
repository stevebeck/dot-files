# export PATH="/System/Library/Frameworks/Ruby.framework/Versions/1.8/usr/bin/:$PATH"
# export PATH="/Library/PostgreSQL8/bin/:$PATH"     
# export PATH="/usr/local/mysql/bin:$PATH"
# export PATH="/usr/local/pgsql/bin:$PATH"
# export PATH=$PATH:"/usr/local/mongodb/bin"
# export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# export IRBRC="$HOME/.irbrc"
export PATH="/usr/local/bin:$PATH"
export PATH=$PATH:"/usr/local/mongodb/bin"
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export IRBRC="$HOME/.irbrc"

export COLOR_NC='\e[0m' # No Color
export COLOR_WHITE='\e[1;37m'
export COLOR_BLACK='\e[0;30m'
export COLOR_BLUE='\e[0;34m'
export COLOR_LIGHT_BLUE='\e[1;34m'
export COLOR_GREEN='\e[0;32m'
export COLOR_LIGHT_GREEN='\e[1;32m'
export COLOR_CYAN='\e[0;36m'
export COLOR_LIGHT_CYAN='\e[1;36m'
export COLOR_RED='\e[0;31m'
export COLOR_LIGHT_RED='\e[1;31m'
export COLOR_PURPLE='\e[0;35m'
export COLOR_LIGHT_PURPLE='\e[1;35m'
export COLOR_BROWN='\e[0;33m'
export COLOR_YELLOW='\e[1;33m'
export COLOR_GRAY='\e[0;30m'
export COLOR_LIGHT_GRAY='\e[0;37m'
alias colorslist="set | egrep 'COLOR_\w*'"  # lists all the colors

export PS1='\W$(__git_ps1 " \[${COLOR_RED}\](%s)\[${COLOR_NC}\]")⤿ '

export TERM=xterm-color
export GREP_OPTIONS='--color=auto' GREP_COLOR='1;32'
export CLICOLOR=1
export EDITOR='sublime -w -l1'
export GIT_EDITOR=$EDITOR
export VISUAL=$EDITOR
# sets title of window to be user@host
export PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME%%.*} ${PWD}"; echo -ne "\007"' 

# fucking useful shit
alias 2.3="mate ~/Sites/rails-2.3"
alias mate='/usr/bin/mate'
# alias subl='open -a /Applications/Sublime\ Text\ 2.app'
alias ls='ls -G'
alias ll='ls -lah'
alias ..='cd ..;' # can then do .. .. .. to move up multiple directories.
alias ...='.. ..'
alias g='grep -i'  #case insensitive grep
alias ducks='du -cks * | sort -rn|head -11' # Lists the size of all the folders$
alias top='top -o cpu'
alias systail='tail -f /var/log/system.log'


# useful command to find what you should be aliasing:
alias profileme="history | awk '{print \$2}' | awk 'BEGIN{FS=\"|\"}{print \$1}' | sort | uniq -c | sort -n | tail -n 20 | sort -nr"

# rails stuff
alias l='lookup'
alias log='tail -f -0 ./log/*.log &'
alias stoplog='killall tail'
alias ss='ruby ./script/server'
alias sc='ruby ./script/console'
alias cdm='cap deploy deploy:migrate'
alias model='script/generate model'
alias controller='script/generate controller'
alias migration='script/generate migration'
alias migrate='rake db:migrate && rake db:test:clone'
alias rollback='rake db:rollback'
alias dtp='rake db:test:prepare'
alias redo="rake db:migrate && rake db:rollback"
alias logga='ssh root@209.20.74.23'
alias startpg='sudo /Library/StartupItems/PostgreSQL/PostgreSQL start'
alias sr='rake spec'
alias rt='rake test'
alias rf='rake features'
alias restart='touch tmp/restart.txt'
alias mong='mongrel_rails start'
alias startpg='sudo su postgres'
alias 1.9="rvm use 1.9"
alias 1.8="rvm use default"
alias t="rake test"
alias s="rake spec"
alias mrt="1.8 && rake test && 1.9 && rake test"
alias mrs="1.8 && rake spec && 1.9 && rake spec"
alias format-patch="git format-patch HEAD^1..HEAD"

alias ber="bundle exec rspec"
alias bes="bundle exec spec"
alias bec="bundle exec cucumber"
alias be="bundle exec"

alias 1.8.7="rvm use 1.8.7"
alias 1.9.2="rvm use 1.9.2"
alias 1.9.3="rvm use 1.9.3"

alias rms='rake merge:staging'
alias start_mongo="screen -dmS mongo rake mongo:start"

alias eysdeploy='echo '\''Deploying to staging. Ctrl-C to cancel, or any other key to continue...'\'' && read && ey deploy -e abcshop_staging'

alias mt="ssh root@abcshop.co"

alias mt2="ssh root@216.70.112.251"



alias eyog="ssh deploy@ec2-54-252-169-112.ap-southeast-2.compute.amazonaws.com"
alias eyhbaw="ssh deploy@ec2-54-252-158-225.ap-southeast-2.compute.amazonaws.com"

alias abcshop="cd ~/Sites/abcshop"
alias am="cd ~/Sites/activememory"
alias hbaw="cd ~/Sites/drupal/happy-body"
alias shophelp="cd ~/Sites/abcshop-help"
alias contentsales="cd ~/Sites/drupal/contentsales/sites"
alias abccommercial="cd ~/Sites/drupal/abccommercial/sites"
alias og="cd ~/Sites/drupal/og_d7/public"
alias abcmusic="cd ~/Sites/drupal/abcmusic/sites"
alias abcdvd="cd ~/Sites/drupal/abcdvd/sites"
alias librarysales="cd ~/Sites/drupal/librarysales/sites"

alias startpg='sudo /Library/StartupItems/PostgreSQL/PostgreSQL start'

alias hidefile='/usr/bin/SetFile -a "V"'
alias showfile='/usr/bin/SetFile -a "v"'

export PATH="/usr/local/bin:$PATH"

teleport() {
  killall teleportd || true
  screen -dm /Library/PreferencePanes/teleport.prefPane/Contents/Resources/teleportd.app/Contents/MacOS/teleportd
  open ~/activate\ telefrag.app
}
 
# Gem Doc
export GEMDIR=`gem env gemdir`
gemdoc() {
  open $GEMDIR/doc/`$(which ls) $GEMDIR/doc | grep $1 | sort | tail -1`/rdoc/index.html
}
_gemdocomplete() {
  COMPREPLY=($(compgen -W '$(`which ls` $GEMDIR/doc)' -- ${COMP_WORDS[COMP_CWORD]}))
  return 0
}
# Side projects
sp() {
  if [ -d ~/Sites/drupal/$1* ]; then 
    cd ~/Sites/drupal/$1*; 
  else
    # unset lookup_name
    # lookup_name=echo $(fold -w1 <(echo $1)) | tr ' ' '*'
    # echo $lookup_name
    # if [ -d ~/Sites/drupal/$lookup_name ]; then
    #   cd ~/Sites/drupal/*$lookup_name*;
    # else
      echo "$1 is not a project."
    # fi
  fi
}

complete -o default -o nospace -F _gemdocomplete gemdoc
complete -C ~/.rake-completion.rb -o default rake


# readline settings
bind "set completion-ignore-case on" 
bind "set show-all-if-ambiguous On" # this allows you to automatically show completion without double tab-ing

# Turn on advanced bash completion if the file exists (get it here: http://www.caliban.org/bash/index.shtml#completion)
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

if [ ! -f ~/.dirs ]; then
	touch ~/.dirs
fi

alias show='cat ~/.dirs'
save (){
	command sed "/!$/d" ~/.dirs > ~/.dirs1; \mv ~/.dirs1 ~/.dirs; echo "$@"=\"`pwd`\" >> ~/.dirs; source ~/.dirs ; 
}
source ~/.dirs  # Initialization for the above 'save' facility: source the .dirs file
shopt -s cdable_vars # set the bash option so that no '$' is required when using the above facility

# history (bigger size, no duplicates, always append):
export HISTCONTROL=erasedups
export HISTSIZE=10000
shopt -s histappend

alias h='history|g'
if [ -s ~/.rvm/scripts/rvm ] ; then source ~/.rvm/scripts/rvm ; fi

# MAMP Settings
#PATH=/Applications/MAMP/Library/bin:/Applications/MAMP/bin/php/php5.3.13/bin:/usr/local/bin:$PATH:/opt/local/bin


PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

export PATH=/Users/becks3w/bin/Sencha/Cmd/3.0.2.288:$PATH

export SENCHA_CMD_3_0_0="/Users/becks3w/Applications/Sencha/Cmd/3.0.2.288"

export PATH=/Applications/SenchaSDKTools-2.0.0-beta3:$PATH

export SENCHA_SDK_TOOLS_2_0_0_BETA3="/Applications/SenchaSDKTools-2.0.0-beta3"

export PATH=/Users/becks3w/Applications/Sencha/Cmd/3.0.2.288:$PATH

export NODE_PATH="/usr/local/lib/node"

export PATH="/usr/local/share/npm/bin:$PATH"
export NODE_PATH=/usr/local/lib/node:/usr/local/lib/node_modules
