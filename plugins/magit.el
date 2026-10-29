;;; -*- lexical-binding: t; -*-

(defvar magit-auto-revert-mode nil)

(straight-use-package 'magit)

(use-package magit
  :ensure t
  :commands (magit-status magit-dispatch magit-file-dispatch)
  :init
  (global-set-key (kbd "<leader>gb") #'magit-blame)
  (global-set-key (kbd "<leader>gd") #'magit-diff)
  (global-set-key (kbd "<leader>gg") #'magit-status)
  (global-set-key (kbd "<leader>gl") #'magit-log)
  :config
  (with-eval-after-load 'evil-collection
    (require 'evil-collection-magit nil t)
    (evil-collection-magit-setup)))

(add-hook 'git-commit-mode-hook #'evil-insert-state)
