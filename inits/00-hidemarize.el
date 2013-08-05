;;Macro Hidemaru風
(defun startend-kbd-macro ()
  "キーボードマクロの記録開始・終了"
  (interactive)
  (if defining-kbd-macro
      (end-kbd-macro)
    (start-kbd-macro nil)))
;;Indent buffer
(defun indent-buffer()
  (interactive)
  (indent-region 0 (point-max) nil))
