# the colors, Duke, the colors!
#if [ -x /usr/bin/dircolors ]; then
#	alias ls='ls --color=auto'
	#alias grep='grep --color=auto'
	#alias fgrep='fgrep --color=auto'
	#alias egrep='egrep --color=auto'
#fi

alias ls='ls -G'
# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# GUI notification 
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# The one command Windows does better
alias cls='clear'

# Choo-choo
alias sl='sl -alFe'

# Print internal and external IP address with geolocation
alias whatismyip="echo -e 'Internal: \c';  ifconfig | sed -En 's/127.0.0.1//;s/.*inet (addr:)?(([0-9]*\.){3}[0-9]*).*/\2/p' ; echo -e 'External: \c'; curl -s http://freegeoip.net/json/  | jq  -r '\"\(.ip) (\(.city), \(.region_code))\"'"

# Show my hosts file
alias hosts='cat /etc/hosts'

# Shortcut to my trackball scroll wheel function enabler, since Ubuntu seems to forget xmodmap values on suspend
alias fixmouse='/home/bill/bin/marbleMouse.sh'

# Open my notes doc in insert mode, at the last line 
alias notes='vim + -c 'startinsert' ~/Documents/notes'

# I can never figure out how to close emacs, so don't ever let me open it
alias emacs='telnet nyancat.dakko.us'

function extract()      # Handy Extract Program
{
    if [ -f $1 ] ; then
        case $1 in
            *.tar.bz2)   tar xvjf $1     ;;
            *.tar.gz)    tar xvzf $1     ;;
            *.bz2)       bunzip2 $1      ;;
            *.rar)       unrar x $1      ;;
            *.gz)        gunzip $1       ;;
            *.tar)       tar xvf $1      ;;
            *.tbz2)      tar xvjf $1     ;;
            *.tgz)       tar xvzf $1     ;;
            *.zip)       unzip $1        ;;
            *.Z)         uncompress $1   ;;
            *.7z)        7z x $1         ;;
            *)           echo "'$1' cannot be extracted via >extract<" ;;
        esac
    else
        echo "'$1' is not a valid file!"
    fi
}

function title {
    echo -ne "\033]0;"$*"\007"
}

alias udate='date +%s'
alias tclog='tail -1000f ~/Library/Caches/IntelliJIdea13/tomcat/Unnamed_d3api_2/logs/d3rest-all.log'
alias tclog-nohist='tail -f ~/Library/Caches/IntelliJIdea13/tomcat/Unnamed_d3api_2/logs/d3rest-all.log'

alias sshaws='ssh -i ~/lodo91613.cer ec2-user@vpn.dev.d3banking.com'
alias sshtc1den='checkVPN && ssh -i ~/lodo91613.cer d3user@192.168.1.25'
alias sshtc2den='checkVPN && ssh -i ~/lodo91613.cer d3user@192.168.1.26'
alias sshsite='mosh imjustabill@billeberly.com'

function checkVPN()
{
    if ifconfig | grep ppp0 > /dev/null ; then
        return 0
	else 
		echo "Check VPN connection"
		return 1
	fi
}

# prints number of files in each immediate subdirectory
function sdc()
{
    find . -maxdepth 1 -mindepth 1 -type d | while read dir; do
	    printf "%-25.25s : " "$dir"
		find "$dir" -type f | wc -l
	done
}

alias fuck='sudo $(history -p \!\!)' 
