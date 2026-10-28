;;; -*- lexical-binding: t; -*-
(defun my/setup-bibtex-formatting ()
  (add-hook 'before-save-hook
            (lambda ()
              (let ((mark-active nil)) (bibtex-reformat)))
            nil t))

(add-hook 'bibtex-mode-hook #'my/setup-bibtex-formatting)
