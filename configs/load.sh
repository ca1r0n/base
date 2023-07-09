#!/bin/sh


rsync -rv --delete ./alacritty $HOME/.config/

rsync -rv --delete ./nvim $HOME/.config/

rsync -v ./zsh/.zshrc $HOME/ 

rsync -v ./tmux/.tmux.conf $HOME/
rsync -v ./tmux/.tmux.conf.local $HOME/

rsync -vEp ./tmux/alacritty-with-tmux.sh $HOME/bin
rsync -vEp ./tmux/tmux-new-session.sh $HOME/bin
