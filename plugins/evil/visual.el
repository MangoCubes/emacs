;; Make arrow keys work as expected when lines wrap around
(define-key evil-normal-state-map (kbd "<remap> <evil-next-line>") 'evil-next-visual-line)
(define-key evil-normal-state-map (kbd "<remap> <evil-previous-line>") 'evil-previous-visual-line)
(define-key evil-motion-state-map (kbd "<remap> <evil-next-line>") 'evil-next-visual-line)
(define-key evil-motion-state-map (kbd "<remap> <evil-previous-line>") 'evil-previous-visual-line)
;; Use visual line mode
;; This needs to be here so that lines do not extend beyond the screen
(add-hook 'prog-mode-hook 'visual-line-mode)
(add-hook 'org-mode-hook 'visual-line-mode)
