(require 'git-gutter-fringe)
(global-git-gutter-mode t)
; (require 'git-gutter)
; ;; If you enable global minor mode
; (global-git-gutter-mode t)
; (custom-set-variables '(git-gutter:update-interval 2))
(fringe-helper-define 'git-gutter-fr:added nil
  "...XXXX."
  "...XXXX."
  "...XXXX."
  "...XXXX."
  "...XXXX."
  "...XXXX."
  "...XXXX."
  "...XXXX.")

(fringe-helper-define 'git-gutter-fr:deleted nil
  "...XXXX."
  "...XXXX."
  "...XXXX."
  "...XXXX."
  "...XXXX."
  "...XXXX."
  "...XXXX."
  "...XXXX.")

(fringe-helper-define 'git-gutter-fr:modified nil
  "...XXXX."
  "...XXXX."
  "...XXXX."
  "...XXXX."
  "...XXXX."
  "...XXXX."
  "...XXXX."
  "...XXXX.")

(provide 'setup-git-gutter)
