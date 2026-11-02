;;; -*- lexical-binding: t; -*-
(load-relative "./formats/json.el")
(load-relative "./formats/bibtex.el")

(defun my/format-buffer-before-save ()
  (indent-region (point-min) (point-max)))
