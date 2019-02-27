# CONFIG
PATH=~/.local/bin:$PATH
export PS1="\[$(tput setaf 3)\]\w \[$(tput setaf 4)\]>\[$(tput setaf 5)\]>\[$(tput setaf 6)\]> \[$(tput setaf 7)\]"
cat /home/suzuhash/.cache/wal/sequences

# ALIASES
alias apti="sudo apt install"
alias aptr="sudo apt remove --purge"
alias apts="apt search"
alias b="cd .."
alias h="cd ~"
alias c="clear"
alias e="exit"
alias g="gimp"
alias l="less"
alias mkd="mkdir -pv"
alias mpsa="mpsyt album"
alias rmf="rm -rf"
alias sv="sudo vim"
alias v="vim"
alias x="chmod +x"

# SCRIPTS
force_color_prompt=yes
if [ -n "$force_color_prompt" ]; then
	if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
		color_prompt=yes
	else
		color_prompt=
	fi
fi

if [ -x /usr/bin/dircolors ]; then
	test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
	alias ls='ls --color=auto'
fi

man() {
	env \
		LESS_TERMCAP_mb=$(printf "\e[1;31m") \
		LESS_TERMCAP_md=$(printf "\e[1;31m") \
		LESS_TERMCAP_me=$(printf "\e[0m") \
		LESS_TERMCAP_se=$(printf "\e[0m") \
		LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
		LESS_TERMCAP_ue=$(printf "\e[0m") \
		LESS_TERMCAP_us=$(printf "\e[1;32m") \
		man "$@"
}