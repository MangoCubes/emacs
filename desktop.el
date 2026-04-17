(load-relative "./common.el")

(my/linux-or-win
  (lambda () (load-relative "./linux.el"))
  (lambda () (load-relative "./windows.el")))

(load-relative "./plugins/nerd-icons.el")
(load-relative "./plugins/org-mode.el")
(load-relative "./plugins/highlight.el")
(load-relative "./plugins/xkcd.el")
;; (load-relative "./plugins/lsp.el")
(load-relative "./plugins/ligature.el")

(load-relative "./my/fonts.el")
(load-relative "./my/mouse.el")
(load-relative "./my/formats.el")
