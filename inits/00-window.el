(require 'windmove)
(global-set-key [M-up] 
                (lambda() (interactive)
                       (call-interactively
                        (if (windmove-find-other-window 'up)
                            'enlarge-window
                          'shrink-window))))

(global-set-key [M-down] 
                (lambda() (interactive)
                       (call-interactively
                        (if (not (windmove-find-other-window 'up))
                            'enlarge-window
                          'shrink-window))))
