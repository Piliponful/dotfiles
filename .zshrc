source ~/antigen/antigen.zsh

# Load the theme
antigen theme https://github.com/denysdovhan/spaceship-zsh-theme spaceship


export NVM_LAZY_LOAD=true
antigen bundle lukechilds/zsh-nvm
antigen bundle chrissicool/zsh-256color
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-syntax-highlighting

antigen apply
