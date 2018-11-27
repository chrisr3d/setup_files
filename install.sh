#!/usr/bin/env bash

#Installing some usefull packages
sudo apt-get install curl vim-gnome screen git tig python3-pip -y
pip3 install pew

#Installing Pathogen
dir=_vim/autoload
if [ ! -d "$dir" ]; then
    mkdir $dir
fi
curl -LSso _vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

#Installing airline
dir=_vim/bundle/vim-airline
if [ ! -d "$dir" ]; then
    git clone https://github.com/vim-airline/vim-airline $dir
fi

#Installing airline themes
dir=$dir'-themes'
if [ ! -d "$dir" ]; then
    git clone https://github.com/vim-airline/vim-airline-themes $dir
fi

#Installing powerline fonts
git clone https://github.com/powerline/fonts.git
cd fonts/
./install.sh
cd ..
sudo rm -r fonts

#Installing vim-gitgutter
dir=_vim/bundle/vim-gitgutter
if [ ! -d "$dir" ]; then
    git clone https://github.com/airblade/vim-gitgutter.git $dir
fi

#Installing vim-indentLine
dir=_vim/bundle/indentLine
if [ ! -d "$dir" ]; then
    git clone https://github.com/Yggdroot/indentLine.git $dir
fi


set -e

function link_file {
    source="${PWD}/$1"
    target="${HOME}/${1/_/.}"

    if [ -e "${target}" ]; then
        mv $target $target.bak
    fi

    ln -sf ${source} ${target}
}

if [ "$1" = "vim" ]; then
    for i in _vim*
    do
       link_file $i
    done
else
    for i in _*
    do
        link_file $i
    done
fi
