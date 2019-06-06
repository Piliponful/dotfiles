fpath+=('/home/piliponful/.nvm/versions/node/v11.12.0/lib/node_modules/pure-prompt/functions')
export HISTFILE=~/.zsh_history
export HISTSIZE=50000
export SAVEHIST=50000
export NVM_LAZY_LOAD=true
export FZF_DEFAULT_COMMAND='rg --files --hidden --glob "!.git/*"'

autoload -U promptinit; promptinit
prompt pure

source ~/antigen/antigen.zsh
source /usr/share/fzf/completion.zsh
source /usr/share/fzf/key-bindings.zsh

antigen bundle lukechilds/zsh-nvm
antigen bundle chrissicool/zsh-256color
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-history-substring-search

antigen apply

bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

setopt appendhistory
setopt extendedglob
setopt vi

alias ls='ls --color=auto'

if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec startx
fi

if [ -z "$TMUX" ]
then
  tmux attach -t TMUX || tmux new -s TMUX
fi

eval $(keychain --eval --quiet --confhost)

source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh
