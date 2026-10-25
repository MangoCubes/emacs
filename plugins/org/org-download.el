;;; -*- lexical-binding: t; -*-
(straight-use-package 'org-download)
(add-hook 'dired-mode-hook 'org-download-enable)
