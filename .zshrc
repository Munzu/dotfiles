# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/tai/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Path extensions
export PATH=/home/tai/miniconda3/bin:$PATH
export PATH=/home/tai/.npm-global/bin:$PATH

# Completion
zstyle ':completion:*:*:git:*' script /usr/share/git/completion/git-completion.zsh
zstyle ':completion:*:*:fzf:*' script /usr/share/fzf/completion.zsh

# Git prompt
setopt prompt_subst
source /usr/share/git/completion/git-prompt.sh

export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
export GIT_PS1_SHOWCOLORHINTS=true

# export PROMPT=$'%F{blue}%1~%F{242}$(__git_ps1 " [ %s]") %F{magenta}❯%F{white} '
export PROMPT=$'%F{242}╒ $(dirname `dirs`)/%F{blue}%1~%F{242}$(__git_ps1 " [ %s]")%b \n╘ %F{magenta}❯%F{white} '

# Some config stuff
source /usr/share/fzf/key-bindings.zsh

# Aliases
alias ls='ls --color=auto'
alias open='xdg-open'
alias devel='tmuxp load devel'
alias :q='exit'
alias sdn='shutdown now'
alias jnb='jupyter notebook --ip=127.0.0.1'
# expand external monitor to the left of internal screen
alias left='xrandr --output HDMI-1 --auto ; xrandr --output HDMI-1 --left-of eDP-1'
alias right='xrandr --output HDMI-1 --auto ; xrandr --output HDMI-1 --right-of eDP-1'
alias mirror='xrandr --output HDMI-1 --auto ; xrandr --output HDMI-1 --same-as eDP-1 --mode 1920x1080 --rate 60'
alias auto='xrandr --output HDMI-1 --auto'
# alias clssh='ssh mai@pool.cl.uni-heidelberg.de -p 2222'

# Functions
function gi() { curl -L -s https://www.gitignore.io/api/$@ ;}  # gitignore.io cli

function cdls() {
    cd "$@" && ls; 
}

function clssh() {
    if [[ "$@" == "pool" ]]; then
        echo "asdf"
        ssh mai@"$@".cl.uni-heidelberg.de -p 2222;
    else
        ssh mai@"$@".cl.uni-heidelberg.de;
    fi
}

function mkcd() {
    mkdir "$@" && cd "$@"; 
}

# Plugins
# source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Adding paths for Tensorflow
export LD_LIBRARY_PATH=/opt/cuda/lib64
export CUDA_HOME=/opt/cuda/
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Adding paths for Android Development
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

# Make latexmk clean .bbl files as well (e.g. with \lc in Vim)
export bibtex_use=2
