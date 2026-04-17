(straight-use-package 'org-transclusion)
(require 'org-transclusion)

(with-eval-after-load 'org
  (define-key evil-normal-state-map (kbd "<leader>na") #'org-transclusion-add)
  (define-key evil-normal-state-map (kbd "<leader>nm") #'org-transclusion-transient-menu)
  (define-key evil-normal-state-map (kbd "<leader>nc") #'org-transclusion-mode)
)
