(straight-use-package 'notmuch)
(require 'notmuch)

(setq notmuch-directory "~/.mail")  ; Set your mail directory
(setq notmuch-search-oldest-first nil) ; Show newest messages first

(defun my/mailto-handler (mailto-uri &rest _)
  (interactive "sMailto URI: ")
  (raise-frame)
  (select-frame-set-input-focus (selected-frame))
  (message-mailto mailto-uri))

(setq mail-user-agent 'message-user-agent)

(setq browse-url-mailto-function #'my/mailto-handler)
