#!/bin/bash

session="Terraform"
session_exists=$(tmux list-sessions | grep "${session}")
window="${session}:0"

if [ "${session_exists}" = "" ]; then
    tmux new-session -d -s "${session}"

    tmux rename-window -t "${window}"
    tmux split-window -h
    tmux select-pane -t "${window}.1"
    tmux send-keys -t "${window}.1" C-z 'watch "ps aux | grep terraform | grep -v "grep""' Enter
    tmux select-pane -t "${window}.0"

fi

tmux attach-session -t "${window}"
