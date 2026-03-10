(straight-use-package 'fcitx)
(require 'fcitx)
(setq fcitx-use-dbus nil fcitx-remote-command "fcitx5-remote")
(fcitx-aggressive-setup)
