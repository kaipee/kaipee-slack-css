#! /bin/bash

_DARK_MODE_DIR=~/git/build/slack-dark-mode
_CUSTOM_CSS_DIR=$(pwd)

if [ -d "$_DARK_MODE_DIR" ]; then
  rm -rf "$_DARK_MODE_DIR"
fi

git clone https://github.com/LanikSJ/slack-dark-mode.git "$_DARK_MODE_DIR"

pushd "$_DARK_MODE_DIR"
git checkout -b "$USER"
rm dark-theme.css
ln -s "$_CUSTOM_CSS_DIR"/dark-theme.css "$_DARK_MODE_DIR"/dark-theme.css
git add dark-theme.css
git commit -m "Stashed dark-theme.css into branch"
./slack-dark-mode.sh
popd
