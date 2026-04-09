(with-eval-after-load 'org
  (define-key org-mode-map (kbd "C-c l") 'org-store-link)
  (define-key evil-normal-state-map (kbd "]m") 'org-forward-heading-same-level)
  (define-key evil-normal-state-map (kbd "[m") 'org-backward-heading-same-level)
  (define-key org-mode-map (kbd "<leader>os") 'my/org-mode-setup)
  (define-key org-mode-map (kbd "<leader>C") 'my/clean-undo-tree)
  (define-key org-mode-map (kbd "<leader>on") 'my/org-create-file)
)

