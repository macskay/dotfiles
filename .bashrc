ORANGE=$'\e[38;5;228m'
LIGHTGREEN=$'\e[01;32m'
LIGHTBLUE=$'\e[01;34m'
YELLOW=$'\e[38;5;228m'
WHITE=$'\e[00;01m'

function _prompt_command() {
    if [[ $VIRTUAL_ENV != "" ]]
    then
        venv="${VIRTUAL_ENV##*/}} "
    else
        venv=""
    fi

    branch=`git symbolic-ref HEAD 2>/dev/null`
    if [[ -n ${branch} ]]; then
        branch=" [${branch#refs/heads/}]"
    else
        branch=""
    fi


    PS1='\[${YELLOW}\]${venv}\[${LIGHTGREEN}\]\u@\H\[${WHITE}\]:\[${LIGHTBLUE}\]\w\[${ORANGE}\]${branch}\[${WHITE}\] $ '
}
export PROMPT_COMMAND=_prompt_command

if [ -f ~/.bashrc_alias ]; then
    . ~/.bashrc_alias
fi

if [ -f ~/.bashrc_aliases_functions ]; then
    . ~/.bashrc_aliases_functions
fi

export $(dbus-launch)
export VISUAL="vim"
export EDITOR="vim"

eval "$(dircolors -b ~/.dircolors)"
eval "$(ssh-agent -s)">/dev/null

. /usr/bin/virtualenvwrapper.sh
 
xset b off

export TMPDIR=$HOME/.tmp
export TERM=xterm-256color
