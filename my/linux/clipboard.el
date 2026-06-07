(cond
  ((eq window-system 'x) (load-relative "./clipboard/x11.el"))
  (t (load-relative "./clipboard/wayland.el")))
