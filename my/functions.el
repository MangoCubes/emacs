(defun my/terminal ()
  "Open a new terminal."
  (interactive)
  (start-process "t" nil "t"))

;; Simplify yes-or-no prompt with simple y/n input
(defun my/ynp (prompt)
  "Press Y or N"
  (let ((answer (read-char (concat prompt " (y/n): ")) ))
	(if (eq answer ?y)
		t
	  (if (eq answer ?n)
		  nil
		(ynp prompt)))))

(defalias 'yes-or-no-p 'my/ynp)

;; Open terminal in a new tab
(defun my/open-terminal-in-new-tab ()
  (interactive)
  (tab-new)  ;; Create a new tab
  (ansi-term "bash"))

(defun my/clean-undo-tree ()
"Clear current buffer's undo-tree.
Undo-tree can cause problems with file encoding when characters
are inserted that cannot be represented using the files current
encoding. This is even the case when characters are only
temporarily inserted, e.g. pasted from another source and then
instantly deleted. In these situations it can be necessary to
clear the buffers undo-tree before saving the file."
  (interactive)
  (let ((buff (current-buffer)))
    (if (local-variable-p 'buffer-undo-tree)
        (if (my/ynp "Clear buffer-undo-tree?")
            (progn
              (setq buffer-undo-tree nil)
              (message "Cleared undo-tree of buffer: %s" (buffer-name buff)))
          (message "Cancelled clearing undo-tree of buffer: %s" (buffer-name buff)))
      (error "Buffer %s has no local binding of `buffer-undo-tree'" (buffer-name buff)))))
