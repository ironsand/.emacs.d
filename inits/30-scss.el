(autoload 'scss-mode "scss-mode")
(setq scss-compile-at-save nil) ;; 自動コンパイルをオフにする
(setq css-indent-offset 2) ;;インデントを2に
(add-to-list 'auto-mode-alist '("\\.scss\\'" . scss-mode))


