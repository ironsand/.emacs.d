;; shell-modeで上下で補完したい
(setq shell-mode-hook
      (function (lambda ()
                  (define-key shell-mode-map "\C-p" 'comint-previous-input)
                  (define-key shell-mode-map "\C-n" 'comint-next-input))))
