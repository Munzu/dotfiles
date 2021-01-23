# Arch

## Files not covered by dotbot (because sudo?)
* Fix for disconnecting WiFi (didn't work but keeping it just in case)
    ```
    sudo ln -s ~/dotfiles/networkstuff/rtl8723be.conf /etc/modprobe.d/rtl8723be.conf
    ```
* rEFInd: skip screen, minimal-black theme
    ```
    sudo cp -r ~/dotfiles/refind/* /efi/EFI/refind/
    ```
* lightdm background
    ```
    sudo cp ~/dotfiles/wallpapers/blueorange_dimmed.png /usr/share/backgrounds
    ```
* Custom EurKEY Colemak-DPGHK layout
    ```
    sudo bash ~/dotfiles/keyboard_layout/eurkey-colemak-dpghk/install.sh
    ```

## Make Firefox open Ranger when clicking "Open containing folder" after download

```
sed '/^Terminal=/d;s/^Exec=/Exec=kitty -e /' /usr/share/applications/ranger.desktop > ~/.local/share/applications/ranger.desktop
```

## Backups

saved in 

```
/run/timeshift/backup
```

## Make vim default git editor
```
git config --global core.editor "vim"
```
