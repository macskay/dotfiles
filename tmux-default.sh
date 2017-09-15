#!/bin/bash

tmux new-session \; \
    send-keys 'weechat' C-m \; \
    split-window -v \; \
    send-keys 'cd ~/Workspace && clear' C-m \; \
    split-window -h \; \
    send-keys 'cd ~/Workspace && clear' C-m \; \
    selectp -t 0    \; \
    split-window -h \; \
    send-keys 'mutt' C-m \;
    split-window -h \; \
    send-keys 'htop' C-m \; \
