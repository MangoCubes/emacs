(defun my/terminal ()
  "Open a new terminal."
  (interactive)
  (start-process "kitty" nil "kitty"))

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

