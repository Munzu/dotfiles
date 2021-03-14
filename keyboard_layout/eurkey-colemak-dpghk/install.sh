# Written by myself, execute with sudo
# Technically a fork of https://gitlab.com/jungganz/eurkey-colemak-mod-dh

# backup
mv /usr/share/X11/xkb/symbols/eu /home/tai/dotfiles/keyboard_layout/eurkey-colemak-dpghk/backup/eu
mv /usr/share/X11/xkb/rules/evdev.extras.xml /home/tai/dotfiles/keyboard_layout/eurkey-colemak-dpghk/backup/evdev.extras.xml
mv /usr/share/X11/xkb/rules/base.extras.xml /home/tai/dotfiles/keyboard_layout/eurkey-colemak-dpghk/backup/base.extras.xml

sudo ln -s /home/tai/dotfiles/keyboard_layout/eurkey-colemak-dpghk/eu /usr/share/X11/xkb/symbols/eu
sudo ln -s /home/tai/dotfiles/keyboard_layout/eurkey-colemak-dpghk/evdev.extras.xml /usr/share/X11/xkb/rules/evdev.extras.xml
sudo ln -s /home/tai/dotfiles/keyboard_layout/eurkey-colemak-dpghk/base.extras.xml /usr/share/X11/xkb/rules/base.extras.xml
