;; hyper key for "C-i" and "C-m"
;; Translate the problematic keys to the function key Hyper:
(keyboard-translate ?\C-i ?\H-i)
(keyboard-translate ?\C-m ?\H-m)

(add-hook 'after-change-major-mode-hook
          #'(lambda () 
	      ;; Simply I like these keybindings
	      (keyboard-translate ?\C-h ?\C-?)
	      (global-set-key "\C-l" 'backward-kill-line)
	      (global-set-key [(control ?\;)] 'execute-extended-command)
	      (global-set-key "\C-z" 'undo)

	      (require 'ndmacro) (global-set-key (kbd "C-t") 'ndmacro)
	      ;;Hidemaru Macro like
              (global-set-key [(shift f1)] 'startend-kbd-macro)
              (global-set-key [(shift f2)] 'call-last-kbd-macro)
	      ;;Hidemaru Indent like
	      (global-set-key [backtab] 'indent-buffer)
	      
	      ;;vi open-line like
	      (global-set-key "\C-j" 'vi-open-line-below)
	      (global-set-key (kbd "C-S-j") 'vi-open-line-above)

	      ;;kill word by C-w
              (global-set-key "\C-w" 'backward-kill-word)
              (define-key minibuffer-local-completion-map "\C-w" 'backward-delete-word)
	      ;; Window
              (global-set-key [M-left] 'shrink-window-horizontally) ;C+← 横のWindowを狭める
              (global-set-key [M-right] 'enlarge-window-horizontally) ;C+→ 横のWindowを広げる
              (global-set-key [(control ?0)] 'delete-window)
              (global-set-key [(control ?1)] 'delete-other-windows)
              (global-set-key [(control ?2)] 'split-window)
              (global-set-key [(control ?3)] 'split-window-horizontally)
              (global-set-key "\C-o" 'other-window)
	      (global-set-key [(ctrl shift o)] (lambda () (interactive) (other-window -1)))
	      
	      ;; My Functions
	      ;; Buffer
	      (global-set-key "\C-x\C-k" 'kill-buffer-without-prompt)
	      ;; help
	      (global-set-key (kbd "<f1>") 'describe-function-or-variable)

	      ))
