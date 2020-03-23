#!/usr/bin/env zsh

# prezto setup
ZDOTDIR=$HOME/.zsh
PREZTO_DIR=$ZDOTDIR/.zprezto

rm -rf $ZDOTDIR
git clone --recursive https://github.com/sorin-ionescu/prezto.git $PREZTO_DIR

setopt EXTENDED_GLOB
for rcfile in $PREZTO_DIR/runcoms/^README.md(.N); do
  ln -s "$rcfile" "$ZDOTDIR/.${rcfile:t}"
done

# dotfiles setup
DOTFILES_ROOT=$(cd $(dirname $0); pwd)

dotfiles=$(find $DOTFILES_ROOT/home -type f)
dotfile_dirs=("/" "/.zsh/" "/.config/" "/.config/nvim/")

mkdir -p $HOME/.config/nvim

for dotfile in $dotfiles; do
  filename=$(basename $dotfile)
  filepath=$(dirname $dotfile)"/"

  for dotfile_dir in "${dotfile_dirs[@]}"; do
    symlink_source_dir=$DOTFILES_ROOT"/home"$dotfile_dir
    if [ $filepath = $symlink_source_dir ]; then
      symlink=$HOME$dotfile_dir$filename
      symlink_source=$symlink_source_dir$filename
      rm -f $symlink
      ln -sf $symlink_source $symlink
    fi
  done
done
