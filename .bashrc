# Change the 16 colours of your default terminal palette to the following Monokai-inspired colours. Do this in your terminal's profile preferences.

# 1st 8 colours: #1D1F21, #F92672, #A6E22E, #FD971F, #1E90FF, #9458FF, #66D9EF, #EDD400
# Next 8 colours: #B294BB, #CC6666, #F92672, #DE935F, #1E90FF, #74B933, #4277AD, #FFFFFF

# Make sure your background colour is the same as the first colour of your palette: #1D1F21
# And set your text colour to #B694D3 and your bold colour to #DA6234

# I use Droid Sans Mono @ 9pt and I also disable bold text in the preferences. You can do what you want.

####################
#### THE PROMPT ####
####################

# Variables for prompt clarity

LBLUE=$'\e[36;40m'
PURPLE=$'\e[35;40m'
GREEN=$'\e[32;40m'
ORANGE=$'\e[33;40m'
YELLOW=$'\e[37;40m' 
PINK=$'\e[31m'
LIGHTGREEN=$'\e[01;32m'
DIR_COLOR=$'\e[38;5;25m'
YEL=$'\e[38;5;228m'
WHITE=$'\e[00;01m'

# This bit enables different colours for your command and output but for it to work you must add yourself to the tty group.
# To do so, enter the following command in your terminal: sudo gpasswd --add <username> tty
# Change <username> to your username of course! 

debug()
{
    echo -n $'\e[0m';
}
trap debug DEBUG

# Colour your prompt

function _prompt_command() {
    if [[ $VIRTUAL_ENV != "" ]]
    then
        venv="${YEL}${VIRTUAL_ENV##*/}} "
    else
        venv=''
    fi

    branch=`git symbolic-ref HEAD 2>/dev/null`
    if [[ -n ${branch} ]]; then
        branch=" ${ORANGE}[${branch#refs/heads/}]"
    else
        branch=''
    fi


    PS1='${venv}${LIGHTGREEN}\u@\H${WHITE}:${DIR_COLOR}\w${branch}${LIGHTGREEN}${WHITE} $ '
}

export PROMPT_COMMAND=_prompt_command

###############################################################################
#### NEEDED BY MY RVM SETUP BUT YOU WILL NEED TO ENTER SOMETHING ELSE HERE ####
############################################################################### 

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

###
# Add Custom Aliases 
###

if [ -f ~/.bashrc_aliases ]; then
    . ~/.bashrc_aliases
fi

if [ -f ~/.bashrc_aliases_functions ]; then
    . ~/.bashrc_aliases_functions
fi

export $(dbus-launch)
export VISUAL="vim"
export EDITOR="vim"

umask 022 

eval "$(dircolors -b ~/.dircolors)"
eval "$(ssh-agent -s)">/dev/null

xinput --set-prop "Razer Razer DeathAdder" "libinput Accel Profile Enabled" 0, 1
xinput --set-prop "Razer Razer DeathAdder" "libinput Accel Speed" -0.8

source /usr/bin/virtualenvwrapper.sh
