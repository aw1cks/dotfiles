HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt append_history
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_verify
setopt inc_append_history
setopt share_history
setopt rmstarsilent
setopt interactivecomments

autoload -Uz promptinit
if [[ -n ${ZDOTDIR}/.zcompdump(#qN.mh+24) ]]; then
  promptinit;
else
  promptinit -C;
fi;
setopt PROMPT_SUBST

autoload -Uz compinit 
if [[ -n ${ZDOTDIR}/.zcompdump(#qN.mh+24) ]]; then
	compinit;
else
	compinit -C;
fi;
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'
zstyle ':completion:*' menu select

bindkey -e
bindkey '^i' expand-or-complete-prefix
bindkey '^[[1;5C' forward-word
bindkey '^[[1;5D' backward-word
bindkey '^[[H' beginning-of-line
bindkey '^[[F' end-of-line
bindkey "${terminfo[khome]}" beginning-of-line
bindkey "${terminfo[kend]}" end-of-line
bindkey "${terminfo[kcbt]}" reverse-menu-complete
bindkey "${terminfo[kdch1]}" delete-char
bindkey '\e[A' history-beginning-search-backward
bindkey '\e[B' history-beginning-search-forward
autoload -U select-word-style
select-word-style normal

#source /usr/share/fzf/key-bindings.zsh
#source /usr/share/fzf/completion.zsh
#source /usr/share/fzf/fzf-extras.zsh

export QT_QPA_PLATFORMTHEME=qt5ct
export ANSIBLE_COW_SELECTION=tux
export KUBECONFIG=$HOME/.config/k8s/new-cluster.yaml
export LS_COLORS="$(vivid generate ayu)"
export SPOTIFY_CLIENT_ID="86a4c93420214365a228f7fee3402565"
export SPOTIFY_SECRET="3dbb30d3cdf84f298754d334e76aee0f"

chpwd() {
    printf "\033]%s\07\n" "zsh"
}

mp3towav() {
    ffmpeg -i "$1.mp3" -acodec pcm_u8 -ar 22050 "$1.wav"
}

alias grep='/usr/bin/grep --color=auto'
alias l='ls -alh'
alias ll='ls --color -l'
alias ls='ls --color=auto'
alias ldn1ppt='ssh ldn1-puppet'
alias sl1ppt='cyber sl1-puppet'
alias ld3ppt='cyber ld3-puppet'
alias ldn1man='ssh netman1'
alias sl1man='cyber ld4-a13-man1'
alias ld3man='cyber-root ld3-man1'
alias ldn1rcd='ssh ldn1-rancid'
alias nginxfmt='nginxfmt.py'
alias ga='git add'
alias gc='git clone'
alias gcom='git commit -m'
alias gpu='git pull'
alias gp='git push'
alias grv="git remote -v"
alias gcm='git checkout master'
alias tmux='tmux -u'
alias antibody-update="antibody bundle < ~/.config/zsh_plugins.txt > ~/.config/zsh_plugins.sh"
alias yayskip='yay -S --mflags --skipinteg'
alias ytm='youtube-dl -x --audio-format mp3'

source ~/.config/zsh_plugins.sh
source ~/.config/gbt

