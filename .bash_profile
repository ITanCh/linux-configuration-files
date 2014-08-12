export PATH=${PATH}:/Users/Tianchi/android_sdk/platform-tools/
export PATH=${PATH}:/Users/Tianchi/android_sdk/tools/

export PS1="________________________________________________________________________________\n| \w @ \h (\u) \n| => "
export PS2="| => "

#别称，让term更强大
alias cp='cp -iv'                           # Preferred 'cp' implementation
alias mv='mv -iv'                           # Preferred 'mv' implementation
alias mkdir='mkdir -pv'                     # Preferred 'mkdir' implementation
alias ll='ls -FGlAhp'                       # Preferred 'ls' implementation
alias less='less -FSRXc'                    # Preferred 'less' implementation
cd() { builtin cd "$@"; ll; }               # Always list directory contents upon 'cd'
alias cd..='cd ../'                         # Go back 1 directory level (for fast typers)
alias ..='cd ../'                           # Go back 1 directory level
alias ...='cd ../../'                       # Go back 2 directory levels
alias .3='cd ../../../'                     # Go back 3 directory levels
alias .4='cd ../../../../'                  # Go back 4 directory levels
alias .5='cd ../../../../../'               # Go back 5 directory levels
alias .6='cd ../../../../../../'            # Go back 6 directory levels
alias edit='subl'                           # edit:         Opens any file in sublime editor
alias f='open -a Finder ./'                 # f:            Opens current directory in MacOS Finder
alias ~="cd ~"                              # ~:            Go Home
alias c='clear'                             # c:            Clear terminal display
alias which='type -all'                     # which:        Find executables
alias path='echo -e ${PATH//:/\\n}'         # path:         Echo all executable Paths
alias show_options='shopt'                  # Show_options: display bash options settings
alias fix_stty='stty sane'                  # fix_stty:     Restore terminal settings when screwed up
alias cic='set completion-ignore-case On'   # cic:          Make tab-completion case-insensitive

#添加色彩
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

#Tree一样强大的lr
alias lr='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'' | less'

#更强壮的信息输出
ii() {
	echo -e "\nYou are logged on ${RED}$HOST"
		echo -e "\nAdditionnal information:$NC " ; uname -a
		echo -e "\n${RED}Users logged on:$NC " ; w -h
		echo -e "\n${RED}Current date :$NC " ; date
		echo -e "\n${RED}Machine stats :$NC " ; uptime
		echo -e "\n${RED}Current network location :$NC " ; scselect
		echo -e "\n${RED}Public facing IP Address :$NC " ;myip
		#echo -e "\n${RED}DNS Configuration:$NC " ; scutil --dns
		echo
}

