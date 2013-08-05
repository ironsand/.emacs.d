(require 'js-comint)
(setq inferior-js-program-command "/usr/local/bin/rhino")
;;これはDebian系で対象実装がRhinoの場合。他のケースは上のパスを書き換えて。
(add-hook 'js2-mode-hook '(lambda () ;;この辺はキーバインド設定なのでお好みで。デフォルト設定だと余り一般的じゃないかも。
			    (local-set-key "\C-x\C-e" 'js-send-last-sexp-and-go)
			    ))
(defun js-other-window ()
  "Run JavaScript on other window"
  (interactive)
  (split-window-horizontally 80)
  (let ((buf-name (buffer-name (current-buffer))))
    (js2-mode)
    (run-js inferior-js-program-command)
    (switch-to-buffer-other-window
     (get-buffer-create buf-name))))
