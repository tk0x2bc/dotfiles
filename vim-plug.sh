#!/usr/bin/env bash

setup_vim_plug () {
  NVIM_DIR=$HOME/.local/share/nvim

  rm -rf $NVIM_DIR
  
  curl -fLo $NVIM_DIR/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
}

setup_vim_plug
