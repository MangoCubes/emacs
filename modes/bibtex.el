;;; -*- lexical-binding: t; -*-
(require 'bibtex)

(straight-use-package 'citar)
(require 'citar)

(setq org-cite-insert-processor 'citar
      org-cite-follow-processor 'citar
      org-cite-activate-processor 'citar)

(defun my/citar-at-point-or (citar-command fallback)
  (lambda ()
    (interactive)
    (if-let ((key (citar-key-at-point)))
        (funcall citar-command key)
      (call-interactively fallback))))

(with-eval-after-load 'evil
  (evil-define-key '(normal visual) bibtex-mode-map
    (kbd "gq") #'bibtex-reformat)
  (evil-define-key 'normal org-mode-map
    (kbd "<leader>oc") #'org-cite-insert
    (kbd "<leader>ob") #'citar-open
    (kbd "gf") (my/citar-at-point-or #'citar-open-entry #'find-file-at-point)
    (kbd "gx") (my/citar-at-point-or #'citar-open-links #'browse-url-at-point)))

(add-hook 'org-mode-hook
          (lambda ()
            (let ((directory (or (and buffer-file-name
                                      (file-name-directory buffer-file-name))
                                 default-directory)))
              (setq-local org-cite-global-bibliography
                          (directory-files-recursively directory "\\.bib\\'"))
              (setq-local citar-bibliography org-cite-global-bibliography))
            (citar-capf-setup)))

