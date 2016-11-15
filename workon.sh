#!/bin/bash

if [[ $_ == $0 ]]; then
    echo "This script must be sourced"
    echo "Usage: source workon <venv_name>"
    echo "Exiting."
    exit 1
fi

if ! [[ $1 ]]; then
    echo "Error - Please specify venv name"
    echo "Usage: source workon <venv_name>"
elif [[ -d ~/.virtualenvs/$1 ]]; then
    . ~/.virtualenvs/$1/bin/activate
    echo "Virtual-Environment ($1) activated."
else
    echo "Error - Can't activate non-existing Virtual Environment"
fi
