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

;; If the autosave file exists when the buffer is killed, delete it
(defun my/remove-draft-mail ()
  (when (and buffer-auto-save-file-name (file-exists-p buffer-auto-save-file-name))
    (delete-file buffer-auto-save-file-name)))

(add-hook 'message-mode-hook (lambda () (add-hook 'kill-buffer-hook #'my/remove-draft-mail nil t)))
