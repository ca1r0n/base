#!/bin/bash

rsync -rv --delete $HOME/.config/alacritty/ ./alacritty/

rsync -rv --delete $HOME/.config/nvim/ ./nvim/

rsync -v $HOME/.zshrc ./zsh/

rsync -v $HOME/.tmux.conf ./tmux/
rsync -v $HOME/.tmux.conf.local ./tmux/
