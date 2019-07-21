# Arch

## Make Firefox open Ranger when clicking "Open containing folder" after
download

```
sed '/^Terminal=/d;s/^Exec=/Exec=kitty -e /' /usr/share/applications/ranger.desktop > ~/.local/share/applications/ranger.desktop
```


