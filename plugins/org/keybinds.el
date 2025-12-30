(with-eval-after-load 'org
  (define-key org-mode-map (kbd "C-c l") 'org-store-link)
  (define-key org-mode-map (kbd "<leader>o") 'my/org-mode-setup)
  (define-key org-mode-map (kbd "<leader>C") 'my/clean-undo-tree)
)

