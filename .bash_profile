alias ls='ls -lhaG'
alias lock='/System/Library/CoreServices/"Menu Extras"/User.menu/Contents/Resources/CGSession -suspend'
alias bp="subl ~/.bash_profile"
alias reload='source ~/.bash_profile'
alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
alias cls='clear'
alias f='open -a Finder ./'  
alias flushdns='dscacheutil -flushcache;sudo killall -HUP mDNSResponder'

# git
alias ga="git add"
alias gc="git commit -m"
alias gpd="git push origin develop"
alias gpm="git push origin master"
alias ungit="find . -name '.git' -exec rm -rf {} \;"
alias reset='git reset --hard HEAD;git clean -d -f .'
alias gs='git status -s'
alias ignore='git update-index --assume-unchanged'
alias unignore='git update-index --no-assume-unchanged'
alias latest='git log --format="%H" -n 1'

# Get your current public IP
alias ip="curl icanhazip.com"

export PATH=~/bin:$PATH

txtblk='\e[0;30m' # Black - Regular
txtred='\e[0;31m' # Red
txtgrn='\e[0;32m' # Green
txtylw='\e[0;33m' # Yellow
txtblu='\e[0;34m' # Blue
txtpur='\e[0;35m' # Purple
txtcyn='\e[0;36m' # Cyan
txtwht='\e[0;37m' # White
bldblk='\e[1;30m' # Black - Bold
bldred='\e[1;31m' # Red
bldgrn='\e[1;32m' # Green
bldylw='\e[1;33m' # Yellow
bldblu='\e[1;34m' # Blue
bldpur='\e[1;35m' # Purple
bldcyn='\e[1;36m' # Cyan
bldwht='\e[1;37m' # White
unkblk='\e[4;30m' # Black - Underline
undred='\e[4;31m' # Red
undgrn='\e[4;32m' # Green
undylw='\e[4;33m' # Yellow
undblu='\e[4;34m' # Blue
undpur='\e[4;35m' # Purple
undcyn='\e[4;36m' # Cyan
undwht='\e[4;37m' # White
bakblk='\e[40m'   # Black - Background
bakred='\e[41m'   # Red
badgrn='\e[42m'   # Green
bakylw='\e[43m'   # Yellow
bakblu='\e[44m'   # Blue
bakpur='\e[45m'   # Purple
bakcyn='\e[46m'   # Cyan
bakwht='\e[47m'   # White
txtrst='\e[0m'    # Text Reset

print_before_the_prompt () {
#    printf "\n$txtred%s: $bldgrn%s $txtpur%s\n$txtrst" "$USER" "$PWD" "$(vcprompt)"
    printf "\n$txtred%s: $bldgrn%s $txtpur%s\n$txtrst" "$USER" "$PWD"
}

PROMPT_COMMAND=print_before_the_prompt
PS1='-> '

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
