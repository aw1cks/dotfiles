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

export EDITOR=nvim
export PATH="$PATH:$HOME/.local/bin"
export QT_QPA_PLATFORMTHEME=qt5ct
export LS_COLORS='rs=0:di=01;34:ln=01;36:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:mi=00:su=37;41:sg=30;43:ca=30;41:tw=30;42:ow=34;42:st=37;44:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arc=01;31:*.arj=01;31:*.taz=01;31:*.lha=01;31:*.lz4=01;31:*.lzh=01;31:*.lzma=01;31:*.tlz=01;31:*.txz=01;31:*.tzo=01;31:*.t7z=01;31:*.zip=01;31:*.z=01;31:*.dz=01;31:*.gz=01;31:*.lrz=01;31:*.lz=01;31:*.lzo=01;31:*.xz=01;31:*.zst=01;31:*.tzst=01;31:*.bz2=01;31:*.bz=01;31:*.tbz=01;31:*.tbz2=01;31:*.tz=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.war=01;31:*.ear=01;31:*.sar=01;31:*.rar=01;31:*.alz=01;31:*.ace=01;31:*.zoo=01;31:*.cpio=01;31:*.7z=01;31:*.rz=01;31:*.cab=01;31:*.wim=01;31:*.swm=01;31:*.dwm=01;31:*.esd=01;31:*.jpg=01;35:*.jpeg=01;35:*.mjpg=01;35:*.mjpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.svg=01;35:*.svgz=01;35:*.mng=01;35:*.pcx=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.m2v=01;35:*.mkv=01;35:*.webm=01;35:*.webp=01;35:*.ogm=01;35:*.mp4=01;35:*.m4v=01;35:*.mp4v=01;35:*.vob=01;35:*.qt=01;35:*.nuv=01;35:*.wmv=01;35:*.asf=01;35:*.rm=01;35:*.rmvb=01;35:*.flc=01;35:*.avi=01;35:*.fli=01;35:*.flv=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.yuv=01;35:*.cgm=01;35:*.emf=01;35:*.ogv=01;35:*.ogx=01;35:*.aac=00;36:*.au=00;36:*.flac=00;36:*.m4a=00;36:*.mid=00;36:*.midi=00;36:*.mka=00;36:*.mp3=00;36:*.mpc=00;36:*.ogg=00;36:*.ra=00;36:*.wav=00;36:*.oga=00;36:*.opus=00;36:*.spx=00;36:*.xspf=00;36:';
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
export FZF_DEFAULT_OPTS='--height 30% --layout=reverse'
export KUBECONFIG=$HOME/.config/k8s/new-cluster.yaml

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
alias vi='nvim'
alias vim='nvim'
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
source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh
