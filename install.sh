sudo apt -y update
sudo apt -y install xclip
sudo apt -y install fonts-firacode
sudo apt -y install tmux
sudo apt -y install zsh
sudo apt -y install git

cp ~/dotfiles/.zshrc ~/
cp ~/dotfiles/.gitconfig ~/
cp ~/dotfiles/.vimrc ~/

git clone https://github.com/zsh-users/antigen.git ~/antigen

command -v zsh | sudo tee -a /etc/shells
chsh -s zsh

echo 'Execute this command in order to install color themes: bash -c  "$(wget -qO- https://git.io/vQgMr)"'
