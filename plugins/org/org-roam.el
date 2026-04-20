(straight-use-package 'org-roam)
(require 'org-roam)

(setq org-roam-directory my/org-root)

(setq org-agenda-files
      (let ((all-org-files (directory-files-recursively 
                            (expand-file-name "Daily" my/org-root) 
                            "\\.org$")))
        (seq-filter (lambda (file)
                      (not (or (string-match-p "\\.undo-tree$" file) ; Ignore undo-tree
                               (string-match-p "/#" file)            ; Ignore auto-save temp files
                               (string-match-p "~$" file))))         ; Ignore backup temp files
                    all-org-files)))

(setq org-agenda-todo-list-sublevels t)
(setq org-agenda-tags-todo-honor-ignore-options t)
(setq org-agenda-show-all-dates t)
(setq org-agenda-entry-text-maxlines 1)

(setq org-agenda-sorting-strategy
      '((todo deadline-up priority-down)))

;; Cache node IDs automatically
(org-roam-db-autosync-mode)
(setq org-roam-dailies-directory "Daily/")
