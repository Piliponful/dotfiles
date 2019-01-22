sudo apt -y update
sudo apt -y install xclip
sudo apt -y install fonts-firacode
sudo apt -y install tmux
sudo apt -y install zsh
sudo apt -y install git

git clone https://github.com/Piliponful/dotfiles.git ~/dotfiles

mv ~/dotfiles/.* ~/

git clone https://github.com/zsh-users/antigen.git ~/antigen

chsh -s zsh
source ~/.zshrc
zsh -i -c "nvm install 10.0.0"

echo 'Execute this command in order to install color themes: bash -c  "$(wget -qO- https://git.io/vQgMr)"'
