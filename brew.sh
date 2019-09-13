#!/usr/bin/env sh

echo "\n"
echo "#############################"
echo "# Installing various programs from brew"
echo "#############################"
echo "\n"

### Install zsh
brew install zsh

# set it as default shell
chsh -s /bin/zsh

### Install yarn
brew install yarn

### Install cask
brew install cask
source ./cask.sh

### Install fonts
brew tap caskroom/fonts
brew cask install font-open-sans
brew cask install font-open-sans-condensed
brew cask install font-roboto
brew cask install font-roboto-condensed
brew cask install font-source-sans-pro
