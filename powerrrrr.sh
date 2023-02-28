# A small script to automate the installation and setting of the powerline symbols to your favorite productivity related apps.


#!/bin/bash

sudo apt-get install python-pip git -y
sudo pip install git+git://github.com/Lokaltog/powerline
wget https://github.com/Lokaltog/powerline/raw/develop/font/PowerlineSymbols.otf https://github.com/Lokaltog/powerline/raw/develop/font/10-powerline-symbols.conf
sudo mv PowerlineSymbols.otf /usr/share/fonts/
sudo fc-cache -vf
sudo mv 10-powerline-symbols.conf /etc/fonts/conf.d/

# vim status line
cat <<EOF >> ~/.vimrc
" Powerline script
set rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim/

" Always show statusline
set laststatus=2

" Use 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256
EOF

# tmux status line
cat <<EOF >> ~/.tmux.conf
# powerline
source /usr/local/lib/python2.7/dist-packages/powerline/bindings/tmux/powerline.conf
set-option -g default-terminal "screen-256color"
EOF

# add bash configuration
cat <<EOF >> ~/.bashrc
# powerline
if [ -f /usr/local/lib/python2.7/dist-packages/powerline/bindings/bash/powerline.sh ]; then
    source /usr/local/lib/python2.7/dist-packages/powerline/bindings/bash/powerline.sh
fi
EOF

# start tmux every bash session
cat <<EOF >> ~/.bashrc
# run tmux every session
if which tmux >/dev/null 2>&1; then
    # if no session is started, start a new session
    test -z ${TMUX} && tmux

    # when quitting tmux, try to attach
    while test -z ${TMUX}; do
	tmux attach || break
    done
fi
EOF

# use antialiased tmux
cat <<EOF >> ~/.bash_aliases
# use antialiased tmux
alias tmux="tmux -2"
EOF
