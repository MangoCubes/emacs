;; Pixel-perfect alignment for orgmode tables
;; Korean characters mess up the alignment, which is why this plugin is needed
(straight-use-package 'valign)
(require 'valign)
(add-hook 'org-mode-hook #'valign-mode)
