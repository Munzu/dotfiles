# Arch

## Files not covered by dotbot
* Fix for disconnecting WiFi
    ```
    sudo ln -s ~/dotfiles/networkstuff/rtl8723be.conf /etc/modprobe.d/rtl8723be.conf
    ```
* rEFInd: skip screen
    * set `timeout` to `-1`
    ```
    sudo cp ~/dotfiles/refind/refind.conf /efi/EFI/refind/refind.conf
    ```

## Make Firefox open Ranger when clicking "Open containing folder" after
download

```
sed '/^Terminal=/d;s/^Exec=/Exec=kitty -e /' /usr/share/applications/ranger.desktop > ~/.local/share/applications/ranger.desktop
```
