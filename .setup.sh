# Setup script when going around to new computers

# Best tools 
sudo apt-get install git tmux vim zsh clipit ctags screen

sudo apt update
sudo apt install python3-dev python3-pip

# Best shell
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

# Configure git
git config --global user.name "Sebastian Fiorini"
git config --global user.email "sebf465@gmail.com"

# Get dotfiles from the web and place them in home
git clone https://github.com/sebfio/dotfiles
mv dotfiles/.* $HOME 

# Get dem spicy powerline fonts
git clone https://github.com/powerline/fonts
echo "Set system fonts in settings, they've now been downloaded"

# TODO: Add clip it aliases to zshrc
