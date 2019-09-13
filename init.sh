#!/usr/bin/env sh

echo "\n"
echo "#############################"
echo "# Init"
echo "#############################"
echo "\n"

### Setup Mac OS X
source ./macos.sh

### Install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

### Install brew
source ./brew.sh

### Install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
nvm install v12

### Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

### Powerline fonts
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts && ./install.sh
cd .. && rm -rf fonts

### Spaceship prompt
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

### Download Oceanic Next themes for iTerm2
curl -o- https://raw.githubusercontent.com/mhartington/oceanic-next-iterm/master/Oceanic-Next.itermcolors > ~/Downloads/Oceanic-Next.itermcolors

### Copy dotfiles and config files
copy .zshrc ~/.zshrc
copy .gitconfig ~/.gitconfig
copy aliases.zsh ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/aliases.zsh
