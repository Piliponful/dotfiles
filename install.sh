sudo apt update
sudo apt install xclip
sudo apt install fonts-firacode
sudo apt install tmux
sudo apt install zsh
sudo apt install git

mv ~/dotfiles/.zshrc ~/.zshrc

git clone https://github.com/zsh-users/antigen.git ~/

chsh -s zsh
source ~/.zshrc
zsh -i -c "nvm install 10.0.0"

echo 'Execute this command in order to install color themes: bash -c  "$(wget -qO- https://git.io/vQgMr)"'
