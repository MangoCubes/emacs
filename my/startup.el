(add-hook 'server-after-make-frame-hook
          (lambda ()
            ;; Your code here
            (message "Emacs client started!")))
;; (org-roam-update-org-id-locations)
