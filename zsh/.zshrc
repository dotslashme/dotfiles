# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

## Basics
setopt NO_BEEP
setopt PUSHD_IGNORE_DUPS
unsetopt MENU_COMPLETE

## History
HISTSIZE=5000
SAVEHIST=2000
HISTFILE=~/.zsh_history

setopt EXTENDED_HISTORY
setopt APPEND_HISTORY
setopt SHARE_HISTORY
setopt INC_APPEND_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_REDUCE_BLANKS
setopt HIST_IGNORE_SPACE

bindkey -v
bindkey "^R" history-incremental-pattern-search-backward

## Completion
setopt ALWAYS_TO_END
setopt AUTO_MENU
setopt COMPLETE_IN_WORD

fpath=(~/.zsh/completions $fpath)
autoload -Uz compinit && compinit

# Fallback to built in ls colors
zstyle ':completion:*' list-colors ''

## Make the list prompt friendly
zstyle ':completion:*' list-prompt '%SAt %p: Hit TAB for more, or the character to insert%s'

## Make the selection prompt friendly when there are a lot of choices
zstyle ':completion:*' select-prompt '%SScrolling active: current selection at %p%s'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
