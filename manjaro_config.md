# Manjaro configurations
## General
### Taskbar
* Enable "Global Menu" widget
* Install Latte dock

## Shell 
* zsh
* Plugins
    * git completion (?)
    * syntax highlighting
* color scheme: snazzy (see dotfiles folder: snazzy.colorscheme)
* Terminal: Konsole
    * background transparency: 20%
* Install stuff
    ```
    sudo pacman -Syyu yay 
    ```
    ```
    yay -Syyu vim kvantum-qt5 spotify whatsapp-nativefier pandoc
    ```

### Ricing
* Install Kvantum
* Application Settings: Widget Style kvantum
* Run kvantum manager
* install Fluent Dark theme in /dotfiles/
* System Settings --> Apperance --> Colors --> Kvantum
* Icons --> Papirus-Dark


## Vim
* install vundle
    * then: :PluginInstall
* see .vimrc
* airline theme: copy base16_snazzy_airline.vim into 
    .vim/bundle/vim-airline-themes/autoload/airline/themes
* 
