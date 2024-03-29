export HISTFILE=~/.zsh_history
export HISTSIZE=50000
export SAVEHIST=50000
export FZF_DEFAULT_COMMAND='rg --files --hidden --glob "!.git/*"'
export PATH=$HOME/go/bin:$HOME/.local/share/solana/install/active_release/bin:$HOME/.config/rofi/bin:$HOME/.local/bin:$HOME/.ghcup/bin:$HOME/scripts:$PATH

export GO111MODULE="on"

source ~/antigen.zsh

antigen bundle mafredri/zsh-async
antigen bundle sindresorhus/pure
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting

antigen apply

setopt appendhistory
setopt extendedglob
setopt vi
setopt inc_append_history
setopt share_history

alias ls='ls --color=auto'
alias g=git
alias dc=docker-compose
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias db='mongosh "mongodb+srv://doadmin:694MT02OorB3a1b5@db-mongodb-fra1-13618-4344c537.mongo.ondigitalocean.com/defi?authSource=admin&replicaSet=db-mongodb-fra1-13618" --tls --tlsCAFile ./docs/ca-certificate.crt'

if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec startx
fi

if [ -z "$TMUX" ]; then
  tmux attach -t TMUX || tmux new -s TMUX
fi

autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search # Up
bindkey "^[[B" down-line-or-beginning-search # Down
