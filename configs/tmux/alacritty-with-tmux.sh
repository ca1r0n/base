#!/bin/sh
cur_time=$(date +%s)
alacritty --command=$HOME/bin/tmux-new-session.sh && tmux kill-session -t $cur_time 
