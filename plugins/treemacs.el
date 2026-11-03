;;; -*- lexical-binding: t; -*-
(straight-use-package 'treemacs)
(straight-use-package 'treemacs-evil)
(straight-use-package 'treemacs-projectile)

(require 'treemacs)

(setq treemacs-follow-after-init t
	  treemacs-read-string-input 'from-child-frame
	  treemacs-recenter-after-project-expand 'on-distance)

(defun my/treemacs-evil-set-jump (fn &rest args)
  ;; Find window that is not treemacs
  (let ((edit-win (cl-find-if (lambda (w) (not (eq 'treemacs-mode (buffer-local-value 'major-mode (window-buffer w)))))
                              (window-list))))
    (when edit-win (with-selected-window edit-win (evil-set-jump))))
    (apply fn args))

(with-eval-after-load 'treemacs
  (require 'treemacs-evil)
  (require 'treemacs-projectile)
  (treemacs-fringe-indicator-mode 'always)
  (treemacs-git-commit-diff-mode t)
  (advice-add #'treemacs-visit-node-default :around #'my/treemacs-evil-set-jump)
  (advice-add #'treemacs-visit-node-no-split :around #'my/treemacs-evil-set-jump))

(load-relative "./treemacs/keybinds.el")

(defun my/treemacs-dedicated-frame ()
  (setf (treemacs-current-workspace) (copy-tree (car (treemacs-workspaces)) t))
  (treemacs-start-on-boot))

(add-hook 'server-after-make-frame-hook #'my/treemacs-dedicated-frame)
