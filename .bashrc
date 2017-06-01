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

if [ -f ~/.bashrc_aliases ]; then
    . ~/.bashrc_aliases
fi

if [ -f ~/.bashrc_aliases_functions ]; then
    . ~/.bashrc_aliases_functions
fi

export $(dbus-launch)
export VISUAL="vim"
export EDITOR="vim"

eval "$(dircolors -b ~/.dircolors)"
eval "$(ssh-agent -s)">/dev/null

# xinput --set-prop "Razer Razer DeathAdder" "libinput Accel Profile Enabled" 0, 1
# xinput --set-prop "Razer Razer DeathAdder" "libinput Accel Speed" -0.8

. /usr/bin/virtualenvwrapper.sh
