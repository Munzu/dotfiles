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


# MY CONFIG 
# Make latexmk clean .bbl files as well (e.g. with \lc in Vim)
export bibtex_use=2

# Turn off all beeps
unsetopt BEEP
# Turn off autocomplete beeps
unsetopt LIST_BEEP


# Plugins
## Syntax highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

## Prompt
export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
export GIT_PS1_SHOWCOLORHINTS=true
export PROMPT=$'%F{242}╒ $(dirname `dirs`)/%F{blue}%1~%F{242}$(__git_ps1 " [ %s]")%b \n╘ %F{magenta}❯%F{white} '

## Git prompt
setopt prompt_subst
source ~/dotfiles/zsh/git-prompt.sh

## Fish like autosuggestions
### https://github.com/zsh-users/zsh-autosuggestions/blob/master/zsh-autosuggestions.zsh
source ~/dotfiles/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

## Completion
### https://github.com/git/git/blob/master/contrib/completion/git-completion.zsh
zstyle ':completion:*:*:git:*' script ~/dotfiles/zsh/git-completion.zsh

## Fuzzy Finder
### https://github.com/junegunn/fzf
zstyle ':completion:*:*:fzf:*' script /usr/share/fzf/completion.zsh
source /usr/share/fzf/key-bindings.zsh


# Path extensions
export PATH=/home/tai/miniconda3/bin:$PATH
export PATH=/home/tai/.npm-global/bin:$PATH

# Adding paths for Tensorflow
# export LD_LIBRARY_PATH=/opt/cuda/lib64
# export CUDA_HOME=/opt/cuda/

# Adding paths for Android Development
# export ANDROID_HOME=$HOME/Android/Sdk
# export PATH=$PATH:$ANDROID_HOME/emulator
# export PATH=$PATH:$ANDROID_HOME/tools
# export PATH=$PATH:$ANDROID_HOME/tools/bin
# export PATH=$PATH:$ANDROID_HOME/platform-tools


# Aliases
alias ls='ls --color=auto'
alias open='xdg-open'
alias devel='tmuxp load devel'
alias :q='exit'
alias sdn='shutdown now'
alias jlab='nohup jupyter lab --ip=127.0.0.1 &'
alias gpu='DRI_PRIME=1'
# expand external monitor to the left of internal screen
alias above="xrandr --output HDMI1 --auto; xrandr --output eDP1 --primary --output HDMI1 --above eDP1 && feh --bg-fill '/home/tai/pictures/wallpapers/blueorange.png'"
alias aboveportrait="xrandr --output HDMI1 --auto; xrandr --output eDP1 --primary --output HDMI1 --above eDP1 --rotate left && feh --bg-fill '/home/tai/pictures/wallpapers/blueorange.png'"
alias left='xrandr --output HDMI1 --auto ; xrandr --output HDMI1 --left-of eDP1'
# alias right='xrandr --output HDMI1 --auto ; xrandr --output HDMI-1 --right-of eDP-1'
alias mirror="xrandr --output HDMI1 --auto; xrandr --output HDMI1 --same-as eDP1 --rotate normal && feh --bg-fill '/home/tai/pictures/wallpapers/blueorange.png'"
alias auto='xrandr --output HDMI1 --auto'
alias portrait="xrandr --output HDMI1 --auto; xrandr --output eDP1 --primary --output HDMI1 --above eDP1 --rotate left && feh --bg-fill '/home/tai/pictures/wallpapers/blueorange.png'"
alias usb='cdls /run/media/tai/*'
alias unusb='unmount /dev/sdb1'
alias reflectorupdate='reflector --verbose --latest 5 --sort rate --save /etc/pacman.d/mirrorlist'
alias jlabvim='sudo jupyter labextension install @axlair/jupyterlab_vim'
alias swptest='python -m joeynmt train configs/rl_test.yaml'


# Functions
function cdls() {
    cd "$@" && ls;    
}

function cdvim() {
    cd "$(dirname $@)" && vim "$(basename $@)";    
}

function clssh() {
    if [[ "$@" == "pool" ]]; then
        ssh mai@"$@".cl.uni-heidelberg.de -p 2222;
    else
        ssh mai@"$@".cl.uni-heidelberg.de;
    fi
}

function mkcd() {
    mkdir "$@" && cd "$@"; 
}

function tbremote() {
    tensorboard --logdir=models/ --port="$@";
}

function tblocal() {
    ssh -NL localhost:1111:localhost:"$@" mai@cluster.cl.uni-heidelberg.de;
}


# Enable miniconda (when installed on Arch with yay)
[ -f /opt/miniconda3/etc/profile.d/conda.sh ] && source /opt/miniconda3/etc/profile.d/conda.sh
