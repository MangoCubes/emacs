(defun my-setup-json-formatting ()
  "Use `json-pretty-print' for region indentation."
  (setq-local indent-region-function #'json-pretty-print))

(add-hook 'js-json-mode-hook #'my-setup-json-formatting)

