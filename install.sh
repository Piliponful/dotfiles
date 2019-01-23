sudo apt -y update
sudo apt -y install xclip
sudo apt -y install fonts-firacode
sudo apt -y install tmux
sudo apt -y install zsh
sudo apt -y install git
sudo apt -y install curl

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

chsh -s zsh

echo 'Execute this command in order to install color themes: bash -c  "$(wget -qO- https://git.io/vQgMr)"'
