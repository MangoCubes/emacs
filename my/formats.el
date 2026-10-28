;;; -*- lexical-binding: t; -*-
(load-relative "./formats/json.el")
(load-relative "./formats/bibtex.el")

(defun my/format-buffer-before-save ()
  (when (indent-region-function)
    (indent-region (point-min) (point-max))))

(add-hook 'before-save-hook #'my/format-buffer-before-save)
