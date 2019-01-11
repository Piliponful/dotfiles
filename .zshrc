source ~/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Load the theme
antigen theme https://github.com/denysdovhan/spaceship-zsh-theme spaceship

antigen bundle git
antigen bundle command-not-found
antigen bundle common-aliases
antigen bundle compleat
antigen bundle git-extras
antigen bundle git-flow
antigen bundle npm
antigen bundle chrissicool/zsh-256color
antigen bundle cloudstek/zsh-plugin-appup
antigen bundle valiev/almostontop
antigen bundle Tarrasch/zsh-autoenv
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle lukechilds/zsh-nvm
export NVM_LAZY_LOAD=true
antigen bundle lukechilds/zsh-nvm
antigen bundle Sparragus/zsh-auto-nvm-use
antigen bundle zsh-users/zsh-syntax-highlighting

antigen apply
