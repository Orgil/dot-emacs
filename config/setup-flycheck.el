(require 'flycheck)
(global-flycheck-mode)

(when (display-graphic-p (selected-frame))
  (eval-after-load 'flycheck
                   '(custom-set-variables
                      '(flycheck-display-errors-function #'flycheck-pos-tip-error-messages))))

(provide 'setup-flycheck)
