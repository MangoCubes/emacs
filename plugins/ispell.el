(eval-after-load 'ispell
    (setq ispell-program-name (executable-find "hunspell")
          ispell-dictionary   "en_GB"))
