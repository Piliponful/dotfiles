sudo pacman -Syu
sudo pacman -S net-tools
sudo pacman -S xclip
sudo pacman -S fonts-firacode
sudo pacman -S tmux
sudo pacman -S editorconfig
sudo pacman -S the_silver_searcher
sudo pacman -S cmake
sudo pacman -S docker
sudo pacman -S docker-compose

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

sudo cp .zshrc ~/
sudo cp .gitconfig ~/
sudo cp .vimrc ~/
sudo cp .tmux.conf ~/

git clone https://github.com/zsh-users/antigen.git ~/antigen
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

vim +PluginInstall +qall

cd ~/.vim/bundle/YouCompleteMe
python3 install.py --ts-completer

echo 'Execute this command in order to install color themes: bash -c  "$(wget -qO- https://git.io/vQgMr)"'
