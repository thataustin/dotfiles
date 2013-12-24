# Copy this file around

  export HISTCONTROL=ignoreboth

  # Basic aliases
  alias ll='ls -l'
  alias la='ls -A'
  alias l='ls -CF'
  # Enable color support of ls and also add handy aliases
  if [ -x /usr/bin/dircolors ]; then
      eval "`dircolors -b`"
      alias ls='ls --color=auto'
      alias dir='dir --color=auto'
      alias vdir='vdir --color=auto'
      alias sls="screen -ls "
      alias sx="screen -x "

      alias grep='grep --color=auto'
      alias fgrep='fgrep --color=auto'
      alias egrep='egrep --color=auto'
  fi

  # Get git branch when possible
	function parse_git_branch {
		git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/[\1]/'
	}
	
  # Show git branch when possible
	function proml {
		local        BLUE="\[\033[0;34m\]"
		local         RED="\[\033[0;31m\]"
		local   LIGHT_RED="\[\033[1;31m\]"
		local       GREEN="\[\033[0;32m\]"
		local LIGHT_GREEN="\[\033[1;32m\]"
		local       WHITE="\[\033[1;37m\]"
		local  LIGHT_GRAY="\[\033[0;37m\]"
		PS1="$LIGHT_GREEN\u@\w$LIGHT_RED\$(parse_git_branch)\$GREEN\$ "
		PS2='> '
		PS4='+ '
	}
  proml

  if [ -f ~/.bashrc/.bashrc  ]; then . ~/.bashrc/.bashrc; fi
  if [ -f ~/.bashrc/z.sh  ]; then . ~/.bashrc/z.sh; fi

# Setting PATH for Python 3.3
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.3/bin:${PATH}"
export PATH

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
