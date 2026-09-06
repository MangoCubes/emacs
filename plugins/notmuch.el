(straight-use-package 'notmuch)
(require 'notmuch)

(setq notmuch-directory "~/.mail")  ; Set your mail directory
(setq notmuch-search-oldest-first nil) ; Show newest messages first

(setq user-mail-address "admin@skew.ch")
(setq user-full-name "Admin")

(setq message-kill-buffer-on-exit t)
(setq message-auto-save-directory "~/.mail/drafts")

(setq send-mail-function 'sendmail-send-it)
(setq sendmail-program "msmtp")
(setq mail-specify-envelope-from t)
(setq message-sendmail-envelope-from 'header)
(setq mail-envelope-from 'header)
