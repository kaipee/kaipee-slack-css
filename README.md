# kaipee-slack-css
My custom CSS changes for Slack Desktop app for Linux

## Usage
```sh
_DIR="$(pwd)"
cd ~/git/build
git clone https://github.com/LanikSJ/slack-dark-mode.git
cd slack-dark-mode
git checkout -b "$USER"
ln -s "_DIR"/dark-mode.css "$(pwd)"/dark-mode.css
git add dark-mode.css
git commit -m "Updated dark mode CSS"
./slack-dark-mode.sh
```
