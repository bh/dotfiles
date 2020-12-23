# https://github.com/romkatv/powerlevel10k/issues/702
emulate zsh -c "$(direnv export zsh)"

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# https://github.com/romkatv/powerlevel10k/issues/702
emulate zsh -c "$(direnv hook zsh)"

source ~/.zinit/bin/zinit.zsh


mkdir -p ~/.cache/zsh/

autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit


# HISTORY
HISTFILE=$HOME/.cache/zsh/history
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


# Plugins

zinit ice depth=1;
zinit light romkatv/powerlevel10k
zinit light zsh-users/zsh-autosuggestions

zinit snippet OMZP::django
zinit snippet OMZP::pyenv
zinit snippet OMZP::archlinux
#zinit snippet OMZP::direnv


source /opt/asdf-vm/asdf.sh
#source /etc/profile.d/fzf.zsh

#zinit ice atload"zpcdreplay" atclone'./zplug.zsh'          
#zinit light g-plane/zsh-yarn-autocompletions

zinit light darvid/zsh-poetry
zinit light supercrabtree/k
zinit light zpm-zsh/ls
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-history-substring-search
zinit light zdharma/fast-syntax-highlighting
zinit light laggardkernel/zsh-thefuck
zinit light le0me55i/zsh-extract
#zinit light joel-porquet/zsh-dircolors-solarized
zinit light "pinelibg/dircolors-solarized-zsh"

## zsh-fzf-history-search
#zinit ice lucid wait'0'
#zinit light joshskidmore/zsh-fzf-history-search

zinit light agkozak/zsh-z
zinit light zsh-users/zsh-completions



autoload compinit
compinit -d ~/.cache/zsh/zcompdump-$ZSH_VERSION


source ~/.zsh/aliases

# To customize prompt, run `p10k configure` or edit ~/.zsh/.p10k.zsh.
[[ ! -f ~/.zsh/.p10k.zsh ]] || source ~/.zsh/.p10k.zsh
