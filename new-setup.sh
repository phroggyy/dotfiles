#################################
### TO DO BEFORE RUNNING THIS ###
#################################
# 1. Install iTerm2 https://www.iterm2.com
# 2. Make sure you run xcode-select --install before running this
# 3. Install Sublime Text 3 https://www.sublimetext.com

# Install Oh-My-Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install Yarn
brew install yarn

yarn global add gtop

# Configure Git
git config --global user.email "leo.sjoberg@gmail.com"
git config --global user.name "Leo Sjöberg"
git config --global push.default current    # This will make sure we automatically create the remote branch without -u for new branches

# Install a reasonable version of sed
brew install gnu-sed --with-default-names

# Install cat with syntax highlighting
brew install bat

# Get some decent infra management going
brew install terraform

# Install Golang
tar -C /usr/local -xzf go1.8.1.darwin-amd64.tar.gz
# Add export PATH=$PATH:/usr/local/go/bin to zshrc
# export GOPATH=$HOME/Code/golang

# Setup vim
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

ln -s $DIR/vim/vimrc $HOME/.vimrc
ln -s $DIR/vim/gvimrc $HOME/.gvimrc
ln -s $DIR/vim/vim $HOME/.vim

# Install Vundle
git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim

# Install plugins
vim +PluginInstall +qall

brew install koekeishiya/formulae/kwm
brew services start kwm
ln -s $DIR/kwm $HOME/.kwm



# Install nerdbar
git clone https://github.com/herrbischoff/nerdbar.widget $HOME/Library/Application\ Support/Übersicht/widgets/nerdbar.widget

# Configure loopback interface startup daemon
ln -s $DIR/com.leosjoberg.loopback-interface.plist $HOME/Library/LaunchAgents
launchctl load $HOME/Library/LaunchAgents/com.leosjoberg.loopback-interface.plist

# Setup wakatime
brew install python3
pip3 install wakatime
git clone https://github.com/wbingli/zsh-wakatime.git ~/.oh-my-zsh/custom/plugins/zsh-wakatime

brew install thefuck

# Install PHP
brew install php73

git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

git clone git@github.com:powerline/fonts.git
./fonts/install.sh
rm -rf fonts
