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

xset b off

export TMPDIR=$HOME/.tmp
export TERM=xterm-256color

export LC_ALL=en_US.utf-8
export LANG="$LC_ALL"

export VULKAN_SDK=/opt/VulkanSDK/1.1.73.0/x86_64
export PATH=/home/max/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/usr/lib/jvm/java-8-oracle/bin:/usr/lib/jvm/java-8-oracle/db/bin:/usr/lib/jvm/java-8-oracle/jre/bin
export PATH=$PATH:/opt/node/bin:/opt/anaconda3/bin:/opt/anaconda3/bin:$VULKAN_SDK/bin

export LD_LIBRARY_PATH=$VULKAN_SDK/lib:$LD_LIBRARY_PATH
export VK_LAYER_PATH=$VULKAN_SDK/etc/explicit_layer.d

VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
. /usr/local/bin/virtualenvwrapper.sh

# added by Anaconda3 5.3.0 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!

#  __conda_setup="$(CONDA_REPORT_ERRORS=false '/opt/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
#  
#  if [ $? -eq 0 ]; then
#      \eval "$__conda_setup"
#  else
#      if [ -f "/opt/anaconda3/etc/profile.d/conda.sh" ]; then
#          . "/opt/anaconda3/etc/profile.d/conda.sh"
#          CONDA_CHANGEPS1=false conda activate base
#      else
#          export PATH="$PATH:/opt/anaconda3/bin"
#      fi
#  fi
#  unset __conda_setup
# <<< conda init <<<
