### Antibody init
source <(antibody init)
antibody bundle < ~/.antibody-plugins

## Hub alias
eval "$(hub alias -s)"

## Alias
alias -g ls='ls -lah --group-directories-first --color=always'

alias lss='ls -rt'
alias mvp='maven -T C1'
alias ssh='TERM=xterm ssh'
alias bat='bat --theme TwoDark --style header,grid'

## Git alias
alias ga='git add'
alias gaa='git add --all'
alias gau='git add --update'
alias gb='git branch'
alias gbd='git branch -d'
alias gbD='git branch -D'
alias gc='git commit -v'
alias gca='git commit -v --amend'
alias gco='git checkout'
alias gd='git diff'
alias gf='git fetch'
alias gl='git pull'
alias glo='git log --oneline --decorate'
alias gloga='git log --oneline --decorate --graph --all'
alias gp='git push'
alias gr='git remote'
alias grb='git rebase'
alias grv='git remote -v'
alias gss='git status -s'
alias gst='git status'
alias gsta='git stash save'
alias gstc='git stash clear'
alias gstd='git stash drop'
alias gstl='git stash list'
alias gstp='git stash pop'
alias gsu='git submodule update'

## Environment
export EDITOR="vim"
export TERM="xterm-256color"
export GOPATH="/home/cvelin/go"
export _JAVA_AWT_WM_NONREPARENTING=1

## ssh-agent
if ! pgrep -u "$USER" ssh-agent > /dev/null; then
    ssh-agent > "$XDG_RUNTIME_DIR/ssh-agent.env"
fi

if [[ ! "$SSH_AUTH_SOCK" ]]; then
    eval "$(<"$XDG_RUNTIME_DIR/ssh-agent.env")"
fi