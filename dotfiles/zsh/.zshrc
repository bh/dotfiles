source ~/.zinit/bin/zinit.zsh

mkdir -p ~/.cache/zsh/

autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit


# HISTORY
HISTFILE=~/.cache/zsh/history
HISTSIZE=10000000
SAVEHIST=10000000
setopt SHARE_HISTORY 
setopt INC_APPEND_HISTORY
setopt HIST_IGNORE_DUPS

# KEYS
bindkey "^[[H"  beginning-of-line       # Pos1
bindkey "^[[F"  end-of-line             # End
bindkey "^[[7~" beginning-of-line       # Pos1
bindkey "^[[8~" end-of-line             # End
bindkey "^[[3~" delete-char             # Del



zinit ice depth=1;
zinit light romkatv/powerlevel10k
zinit light zsh-users/zsh-autosuggestions

zinit snippet OMZP::django
zinit snippet OMZP::pyenv
zinit snippet OMZP::archlinux
zinit snippet OMZP::asdf


#zinit ice atload"zpcdreplay" atclone'./zplug.zsh'          
#zinit light g-plane/zsh-yarn-autocompletions

zinit light  "darvid/zsh-poetry"
zinit light supercrabtree/k
zinit light zpm-zsh/ls
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-history-substring-search
zinit light zdharma/fast-syntax-highlighting
zinit light laggardkernel/zsh-thefuck
zinit light le0me55i/zsh-extract
#zinit light joel-porquet/zsh-dircolors-solarized
zinit light "pinelibg/dircolors-solarized-zsh"


zinit light agkozak/zsh-z
zinit light zsh-users/zsh-completions

autoload compinit
compinit -d ~/.cache/zsh/zcompdump-$ZSH_VERSION




eval "$(direnv hook zsh)"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
### End of Zinit's installer chunk


source ~/.zsh/aliases
