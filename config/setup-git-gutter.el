(require 'git-gutter-fringe)
(global-git-gutter-mode t)
; (require 'git-gutter)
; ;; If you enable global minor mode
; (global-git-gutter-mode t)
; (custom-set-variables '(git-gutter:update-interval 2))
(fringe-helper-define 'git-gutter-fr:added nil
  "XX......"
  "XX......"
  "XX......"
  "XX......"
  "XX......"
  "XX......"
  "XX......"
  "XX......"
  "XX......"
  "XX......"
  "XX......"
  "........"
  "........"
  )

(fringe-helper-define 'git-gutter-fr:deleted nil
  "XX......"
  "XX......"
  "XX......"
  "XX......"
  "XX......"
  "XX......"
  "XX......"
  "XX......"
  "XX......"
  "XX......"
  "XX......"
  "........"
  "........"
  )

(fringe-helper-define 'git-gutter-fr:modified nil
  "XX......"
  "XX......"
  "XX......"
  "XX......"
  "XX......"
  "XX......"
  "XX......"
  "XX......"
  "XX......"
  "XX......"
  "XX......"
  "........"
  "........"
  )

(provide 'setup-git-gutter)
