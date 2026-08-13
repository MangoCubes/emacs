(defun my/org-insert-child-heading ()
  (interactive)
  (org-insert-heading-respect-content)
  (org-do-demote))

(with-eval-after-load 'org
  (define-key org-mode-map (kbd "C-c l") 'org-store-link)
  (define-key org-mode-map (kbd "C-c a") 'org-agenda)
  (define-key evil-normal-state-map (kbd "]m") 'org-forward-heading-same-level)
  (define-key evil-normal-state-map (kbd "[m") 'org-backward-heading-same-level)
  (define-key org-mode-map (kbd "<leader>os") 'my/org-mode-setup)
  (define-key org-mode-map (kbd "C-c n") 'my/org-create-file)
  (define-key org-mode-map (kbd "C-M-<return>") 'my/org-insert-child-heading))

