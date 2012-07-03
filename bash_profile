#alias drush='~/dev/drush/drush'
source ~/.git-completion.bash
source ~/.bashrc
source ~/.gitaliases
# -- start rip config -- #
RIPDIR=/Users/becks3w/.rip
RUBYLIB="$RUBYLIB:$RIPDIR/active/lib"
PATH="$PATH:$RIPDIR/active/bin"
export RIPDIR RUBYLIB PATH
# -- end rip config -- #
if [ -s ~/.rvm/scripts/rvm ] ; then source ~/.rvm/scripts/rvm ; fi
export DRUSH_PHP=/Applications/MAMP/bin/php/php5.3.6/bin/php
