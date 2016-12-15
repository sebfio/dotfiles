# Setup script when going around to new computers

# Best tools
sudo apt-get install git mercurial vim zsh clipit

# the tool itself has a NSFW name, pass it in as an option to install
if [ "$1" == fuck]; then
    sudo apt update
    sudo apt install python3-dev python3-pip
    sudo -H pip3 install thefuck

    echo 'eval "$(thefuck --alias)"' >> .zshrc
fi

# Best shell
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

# Configure git
git config --global user.name "Sebastian Fiorini"
git config --global user.email "sebf465@gmail.com"

# Get dotfiles from the interwebz and place them in home
git clone https://github.com/sebfio/dotfiles
mv dotfiles/.* $HOME 

# Get dem spicy powerline fonts
git clone https://github.com/powerline/fonts
echo "Set system fonts in settings, they've now been downloaded"


