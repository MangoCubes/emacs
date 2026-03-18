(straight-use-package 'org-roam)
(require 'org-roam)

(setq org-roam-directory
      (file-truename
       (expand-file-name
        "Sync/Notes/Org"
        (my/linux-or-win
         (lambda () (getenv "HOME"))
         (lambda () (expand-file-name "Documents" (getenv "USERPROFILE")))))))

;; Cache node IDs automatically
(org-roam-db-autosync-mode)
(setq org-roam-dailies-directory "Daily/")
