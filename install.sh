sudo apt -y update
sudo apt -y install net-tools
sudo apt -y install xclip
sudo apt -y install fonts-firacode
sudo apt -y install tmux
sudo apt -y install vim
sudo apt -y install zsh
sudo apt -y install git
sudo apt -y install curl
sudo apt -y install editorconfig
sudo apt -y install silversearcher-ag
sudo apt -y install build-essential cmake python3-dev \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common
sudo apt -y install wine

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt -y install docker-ce

sudo curl -L "https://github.com/docker/compose/releases/download/1.23.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

sudo usermod -aG docker $USER

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Install vs code
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt -y install apt-transport-https
sudo apt -y update
sudo apt -y install code

cp ~/dotfiles/.zshrc ~/
cp ~/dotfiles/.gitconfig ~/
cp ~/dotfiles/.vimrc ~/
cp ~/dotfiles/.tmux.conf ~/

git clone https://github.com/zsh-users/antigen.git ~/antigen
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

vim +PluginInstall +qall

cd ~/.vim/bundle/YouCompleteMe
python3 install.py --ts-completer

chsh -s zsh

echo 'Execute this command in order to install color themes: bash -c  "$(wget -qO- https://git.io/vQgMr)"'
