export HISTFILE=~/.zsh_history
export HISTSIZE=50000
export SAVEHIST=50000
export FZF_DEFAULT_COMMAND='rg --files --hidden --glob "!.git/*"'
export PATH=$HOME/scripts:$PATH

source ~/antigen.zsh

antigen bundle mafredri/zsh-async
antigen bundle sindresorhus/pure
antigen bundle chrissicool/zsh-256color
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-history-substring-search

antigen apply

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

setopt appendhistory
setopt extendedglob
setopt vi
setopt inc_append_history
setopt share_history

alias ls='ls --color=auto'
alias g=git

if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec startx
fi

if [ -z "$TMUX" ]; then
  tmux attach -t TMUX || tmux new -s TMUX
fi

eval $(keychain --eval --quiet --confhost)

source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh
