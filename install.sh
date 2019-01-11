sudo apt install zsh
chsh -s zsh
sudo apt install git
mv ~/dotfiles/.zshrc ~/.zshrc
git clone https://github.com/zsh-users/antigen.git ~
source ~/.zshrc
zsh -i -c "nvm install 10.0.0"
echo 'bash -c  $(wget -qO- https://git.io/vQgMr)'
