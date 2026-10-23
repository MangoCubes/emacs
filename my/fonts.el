(defun configure-font (frame)
  "Modify fonts"
  (set-face-attribute 'default nil :font "FiraCode Nerd Font-18" :height (floor (* default-scale 110)))

  (set-fontset-font t 'hangul (font-spec :family "Noto Sans Mono CJK KR"))
)

(add-hook 'after-make-frame-functions #'configure-font)
