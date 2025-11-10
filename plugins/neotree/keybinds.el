(global-set-key (kbd "<leader>s") 'neotree-show)
(global-set-key (kbd "<leader>S") 'neotree-find)

;; Some binding changes
(evil-define-key 'normal neotree-mode-map (kbd "a") 'neotree-create-node)
(evil-define-key 'normal neotree-mode-map (kbd "g x") 'neotree-open-file-in-system-application)
(evil-define-key 'normal neotree-mode-map (kbd "R") 'neotree-refresh)
(evil-define-key 'normal neotree-mode-map (kbd ".") 'neotree-change-root)

