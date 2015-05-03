(require 'flycheck)
(global-flycheck-mode)
; (after 'flycheck
;   (setq flycheck-check-syntax-automatically '(save mode-enabled))
;   (setq flycheck-checkers (delq 'emacs-lisp-checkdoc flycheck-checkers))
;   (setq flycheck-checkers (delq 'html-tidy flycheck-checkers))
;   (setq flycheck-standard-error-navigation nil))

(provide 'setup-flycheck)
